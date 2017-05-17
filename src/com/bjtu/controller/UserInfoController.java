package com.bjtu.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import com.bjtu.entity.EmployerUserAuthInfo;
import com.bjtu.entity.NannyUserAuthInfo;
import com.bjtu.service.NannyUserService;
import com.bjtu.service.ResourcesService;
import com.bjtu.util.ResponseUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.sf.json.JSONObject;

/**
 * 用户信息控制器
 */
@Controller
public class UserInfoController {

	@Autowired
	private ResourcesService resourcesService;

	@Autowired
	private NannyUserService nannyUserService;

	// 获取用户图片
	@RequestMapping(value = "/image")
	@ResponseBody
	public String getImage(HttpServletRequest request) throws IOException {
		ArrayList<StringBuilder> list = new ArrayList<StringBuilder>();
		int count = Integer.parseInt(request.getParameter("page"));
		Map<Integer, String> result = resourcesService.getImageUrl(count);
		if (result != null) {
			Iterator iterator = result.entrySet().iterator();
			while (iterator.hasNext()) {
				StringBuilder a = new StringBuilder("{\"user_id\":");
				Map.Entry entry = (Map.Entry) iterator.next();
				int user_id = (int) entry.getKey();
				String pic_url = (String) entry.getValue();
				a.append("\"" + user_id + "\"," + "\"pic_url\":" + "\"" + pic_url + "\"");
				a.append("}");
				list.add(a);
			}
		}
		StringBuilder sb = new StringBuilder("[");
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i));
			if ((i + 1) != list.size())
				sb.append(",");
		}
		sb.append("]");
		return sb.toString();
	}

	@RequestMapping(value = "/imgUpload")
	@ResponseBody
	public String imgUpload(HttpServletRequest request) throws IllegalStateException, IOException {
		int user_id = getUserIdBySession(request);
		// 构造一个CommonstMultipartResolver,用ServletContext初始化
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		// 检查表单中是否存在 enctype="multipart/form-data"
		if (multipartResolver.isMultipart(request)) {
			// 将request包裹成MultipartHttpServletRequest，并获取所有文件名
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			Iterator iter = multiRequest.getFileNames();

			while (iter.hasNext()) {
				// 一次遍历所有文件
				MultipartFile file = multiRequest.getFile(iter.next().toString());
				if (file != null) {
					// 确定文件路径并上传
					String t = Thread.currentThread().getContextClassLoader().getResource("").getPath();
					int num = t.indexOf(".metadata");
					String path = t.substring(1, num).replace('/', '\\') + "nanny\\WebContent\\imgResources\\";
					String rootpath = path.replaceAll("\\\\", "/");
					String oringinalFilename = file.getOriginalFilename();
					String[] parsePath = oringinalFilename.split("\\.");
					String resPath = "";
					if (user_id != 0)
						resPath = rootpath + user_id + "." + parsePath[1];
					else
						resPath = rootpath + "none" + "." + parsePath[1];
					file.transferTo(new File(resPath));
					// 存入数据库
					if (user_id != 0)
						resourcesService.savePicUrl(user_id, "./imgResources/"+user_id + "." + parsePath[1]);
				}

			}

		}
		return "{\"sucess\":\"true\"}";
	}
	
	/**
	 * 附件上传
	 * */
	public String fileUpload(MultipartFile multipartFile,HttpSession session){
		try{
			String filename = multipartFile.getOriginalFilename();
			String leftpath = session.getServletContext().getRealPath("/blob");
			File file = new File(leftpath,filename);
			multipartFile.transferTo(file);
		}catch(Exception e){
			System.out.println("文件上传失败！");
		}
		return "";
	}
	
	/**
	 * 月嫂用户信息认证
	 * */
	@RequestMapping(value="/nannyAuth")
	@ResponseBody
	public String nannyInfoAuth(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		String nannyJson = request.getParameter("nannyData");
		JSONObject jsonObj = JSONObject.fromObject(nannyJson);
		NannyUserAuthInfo nannyUserAuthInfo = new NannyUserAuthInfo();
		nannyUserAuthInfo.setTarget_city((String)(jsonObj.get("city")));
		nannyUserAuthInfo.setIs_home((String)jsonObj.get("live"));
		nannyUserAuthInfo.setExperience((String)jsonObj.get("workCondition"));
		nannyUserAuthInfo.setEducation((String)jsonObj.get("nannyEducation"));
		nannyUserAuthInfo.setSalary(jsonObj.getInt("nannySalary"));
		nannyUserAuthInfo.setVacation(jsonObj.getInt("nannyRestTime"));
		nannyUserAuthInfo.setNation(jsonObj.getString("nation"));
		nannyUserAuthInfo.setFaith(jsonObj.getString("faith"));
		nannyUserAuthInfo.setMarry_status(jsonObj.getString("maritalStatus"));
		nannyUserAuthInfo.setChild_is_local(jsonObj.getString("isChildLocal"));
		nannyUserAuthInfo.setParent_is_local(jsonObj.getString("isParentLocal"));
		nannyUserAuthInfo.setIntroduction(jsonObj.getString("introduce"));
		nannyUserAuthInfo.setRemark(jsonObj.getString("remark"));
		nannyUserAuthInfo.setUser_id(user_id);
		nannyUserService.nannyAuth(nannyUserAuthInfo);
		return nannyJson;
	}
	
	/**
	 * 雇主用户信息认证
	 * */
	@RequestMapping(value="/employerAuth")
	@ResponseBody
	public String employerInfoAuth(HttpServletRequest request){
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("sessionName");
		int user_id = 0;
		if(email!=null) user_id = nannyUserService.getIdByUsername(email);
		String employerJson = request.getParameter("employerData");
		JSONObject jsonObj = JSONObject.fromObject(employerJson);
		EmployerUserAuthInfo employerUserAuthInfo = new EmployerUserAuthInfo();
		employerUserAuthInfo.setUser_id(user_id);
		employerUserAuthInfo.setWork_address(jsonObj.getString("workPlace"));
		employerUserAuthInfo.setIs_home(jsonObj.getString("isNeedLive"));
		employerUserAuthInfo.setExperience_need(jsonObj.getString("experience"));
		employerUserAuthInfo.setEducation(jsonObj.getString("employerEducation"));
		employerUserAuthInfo.setCan_pay(jsonObj.getInt("employerSalary"));
		employerUserAuthInfo.setVacation(jsonObj.getInt("employerRestTime"));
		employerUserAuthInfo.setBaby_birth(jsonObj.getString("babyyear")+"/"+jsonObj.getString("babymonth")+"/"+jsonObj.getString("babydate"));
		employerUserAuthInfo.setBaby_weight(jsonObj.getDouble("babyBirthWeight"));
		employerUserAuthInfo.setMother_age(jsonObj.getInt("motherAge"));
		employerUserAuthInfo.setMother_weight(jsonObj.getDouble("motherWeight"));
		employerUserAuthInfo.setMother_height(jsonObj.getInt("motherHeight"));
		employerUserAuthInfo.setChildbirth_count(jsonObj.getInt("deliveryTimes"));
		employerUserAuthInfo.setChildbirth_method(jsonObj.getString("deliveryMode"));
		nannyUserService.employerAuth(employerUserAuthInfo);
		return employerJson;
	}

	/**
	 * 请求身份信息
	 * @throws JsonProcessingException 
	 * */
	@RequestMapping(value="/getIdentityInfo")
	@ResponseBody
	public String getIdentityInfo(HttpServletRequest request) throws JsonProcessingException{
		int user_id = getUserIdBySession(request);
		ArrayList<StringBuilder> list = new ArrayList<StringBuilder>();
		String identity = nannyUserService.getIdentityById(user_id);
		if(identity==null) identity="null";
		if(identity.equals("employer")){
			StringBuilder args0 = new StringBuilder("{\"identity\":\"employer\"}");
			list.add(args0);
			EmployerUserAuthInfo employer = nannyUserService.getEmployerById(user_id);
			String args1 = nannyUserService.getEmployerJson(employer);
			list.add(new StringBuilder(args1));
		}else if(identity.equals("nanny")){
			StringBuilder args0 = new StringBuilder("{\"identity\":\"nanny\"}");
			list.add(args0);
			NannyUserAuthInfo nanny = nannyUserService.getNannyById(user_id);
			String args1 = nannyUserService.getNannyJson(nanny);
			list.add(new StringBuilder(args1));
		}else{
			StringBuilder args0 = new StringBuilder("{\"identity\":\"null\"}");
			list.add(args0);
		}
		
		StringBuilder sb = new StringBuilder("[");
		for(int i=0;i<list.size();i++){
			sb.append(list.get(i));
			if ((i + 1) != list.size())
				sb.append(",");
		}
		sb.append("]");
		return sb.toString();
	}
	
	/**
	 * 请求基本信息
	 * */
	@RequestMapping(value="/getBaseInfo")
	@ResponseBody
	public String getBaseInfo(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		return nannyUserService.getBaseInfo(user_id);
	}
	
	/**
	 * 添加月嫂技能描述
	 * */
	@RequestMapping(value="/addSkillDescription")
	@ResponseBody
	public String addSkillDescription(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		String skillJson = request.getParameter("labelInfo");
		return nannyUserService.addSkillLabel(user_id, skillJson);
	}
	
	/**
	 * 添加雇主技能描述
	 * */
	@RequestMapping(value="/addDescription")
	@ResponseBody
	public String addDescription(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		String skillJson = request.getParameter("labelInfo");
		return nannyUserService.addDescription(user_id, skillJson);
	}
	
	/**
	 * 获取月嫂个人信息
	 * */
	@RequestMapping(value="/getNannyInfo",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String getNannyInfo(HttpServletRequest request){
		String user_id = request.getParameter("user_id");
		String result = nannyUserService.getNannyInfo(Integer.parseInt(user_id));
		return result;
	}
	
	@RequestMapping(value="/addOrder",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String addOrder(HttpServletRequest request){
		String result = "";
		try{
			String user_id = request.getParameter("user_id");
			String email = request.getParameter("currentEmail");
			String city = request.getParameter("city");
			String lastTime = request.getParameter("finally");
			String startTime = request.getParameter("start");
			String endTime = request.getParameter("end");
			String lowSalary = request.getParameter("small");
			String highSalary = request.getParameter("most");
			int employer_id = nannyUserService.getIdByUsername(email);
			nannyUserService.addOrder(lastTime, startTime, endTime, lowSalary, highSalary, city, Integer.parseInt(user_id), employer_id);
			result = "true";
		}catch(Exception e){
			result = "false";
			e.printStackTrace();
		}
		return "{\"success\":\""+result+"\"}";
	}
	
	//从会话中获取用户ID
	public int getUserIdBySession(HttpServletRequest request){
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("sessionName");
		int user_id = 0;
		if(email!=null) user_id = nannyUserService.getIdByUsername(email);
		return user_id;
	}
}
