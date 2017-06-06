package com.bjtu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjtu.entity.EmployerUserAuthInfo;
import com.bjtu.entity.task.SingTask;
import com.bjtu.service.InfoService;
import com.bjtu.service.NannyUserService;
import com.bjtu.service.task.TaskService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * 任务控制器
 */
@Controller
public class TaskController {

	@Autowired
	private NannyUserService nannyUserService;
	
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private InfoService infoService;

	/**
	 * 添加单个任务
	 */
	@RequestMapping(value = "/addSingleTask")
	@ResponseBody
	public void addSingleTask(HttpServletRequest request) {
		int employer_id = getUserIdBySession(request);
		int nanny_id = taskService.getNannyIdByEmployerId(employer_id);
		String json = request.getParameter("task");
		JSONArray jsonArray = JSONArray.fromObject(json);
		for (int i = 0; i < jsonArray.size(); i++) {
			JSONObject jsonObj =(JSONObject) jsonArray.get(i);
			SingTask singleTask = new SingTask();
			String time = jsonObj.getString("itemtime");
			String task = jsonObj.getString("itemwhat");
			
			singleTask.setTime(time);
			singleTask.setTaskDetails(task);
			singleTask.setNanny_id(nanny_id);
			singleTask.setEmployer_id(employer_id);
			
			taskService.addSingleTask(singleTask);
		}
		System.out.println(json);
	}

	/**
	 * 添加历史任务
	 */
	@RequestMapping(value = "/addHistoryTask")
	@ResponseBody
	public void addHistoryTask(HttpServletRequest request) {

	}
	
	/**
	 * 获取雇主信息,任务信息
	 * */
	@RequestMapping(value = "/getEmployerAndTaskInfo")
	@ResponseBody
	public String getEmployerAndTaskInfo(HttpServletRequest request){
		int nanny_id = getUserIdBySession(request);
		int employer_id = taskService.getEmployerIdByNannyId(nanny_id);
		StringBuilder result = new StringBuilder("[");
		String task = taskService.getEmployerAndTask(nanny_id);
		EmployerUserAuthInfo employer = nannyUserService.getEmployerById(employer_id);
		String employerJson = nannyUserService.getEmployerJson(employer);
		result.append(task+",["+employerJson+"]"+"]");
		return result.toString();
	}
	
	/**
	 * 获取月嫂信息，任务信息
	 * */
	@RequestMapping(value = "/getNannyAndTaskInfo")
	@ResponseBody
	public String getNannyAndTaskInfo(HttpServletRequest request){
		int employer_id = getUserIdBySession(request);
		int nanny_id = taskService.getNannyIdByEmployerId(employer_id);
		String result = "";
		String task = taskService.getNannyAndTask(employer_id);
		String nanny = nannyUserService.getNannyInfo(nanny_id);
		if(nanny!=null){
			result=nanny.substring(0, nanny.length()-1)+","+task+"]";
		}else{
			result = task;
		}
		return result;
	}
	
	/**
	 * 获取任务信息(月嫂视角)
	 * */
	@RequestMapping(value="/getTaskInfoNanny")
	@ResponseBody
	public String getTaskInfoNanny(HttpServletRequest request){
		int nanny_id = getUserIdBySession(request);
		return infoService.getOrderInfo(nanny_id);
	}
	
	/**
	 * 获取任务信息(雇主视角)
	 * */
	@RequestMapping(value="/getTaskInfoEmployer")
	@ResponseBody
	public String getTaskInfoEmployer(HttpServletRequest request){
		int employer_id = getUserIdBySession(request);
		return infoService.getEmployerInfo(employer_id);
	}
	
	/**
	 * 获取任务信息
	 * */
	@RequestMapping(value="/getTaskInfo")
	@ResponseBody
	public String getTaskInfo(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		String identity = nannyUserService.getIdentityById(user_id);
		String identityJSON = "[{\"identity\":\""+identity+"\"}]";
		String taskInfo = "";
		String result = "";
		if(identity.equals("employer")){
			taskInfo = getTaskInfoEmployer(request);
			result = "["+identityJSON+","+taskInfo.substring(1, taskInfo.length());
		}else if(identity.equals("nanny")){
			taskInfo = getTaskInfoNanny(request);
			result = "["+identityJSON+","+taskInfo.substring(1, taskInfo.length());
		}else{
			
		}
		return result;
	}
	
	/**
	 * 获取用户所有任务
	 * */
	@RequestMapping(value="/getAllTask")
	@ResponseBody
	public String getAllTask(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		String identity = nannyUserService.getIdentityById(user_id);
		String result = taskService.getAllTask(user_id, identity);
		return result;
	}
	
	/**
	 * 评级
	 * */
	@RequestMapping(value="/markStar")
	@ResponseBody
	public void markStar(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		String identity = nannyUserService.getIdentityById(user_id);
		String json = request.getParameter("params");
		JSONObject jsonObj = JSONObject.fromObject(json);
		String  starStr  =jsonObj.getString("star");
		int star = Integer.valueOf(starStr);
		String task = jsonObj.getString("work");
		String time = jsonObj.getString("time");
		taskService.markStar(user_id, star, task, time);
	}
	
	/**
	 * 接触雇约关系
	 * */
	@RequestMapping(value="/dissEmployment")
	@ResponseBody
	public void dissEmployment(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		String identity = nannyUserService.getIdentityById(user_id);
		taskService.dissEmployment(user_id, identity);
	}

	// 从会话中获取用户ID
	public int getUserIdBySession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("sessionName");
		int user_id = 0;
		if (email != null)
			user_id = nannyUserService.getIdByUsername(email);
		return user_id;
	}

}
