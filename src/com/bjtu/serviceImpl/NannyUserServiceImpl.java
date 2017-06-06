package com.bjtu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjtu.dao.UserDao;
import com.bjtu.daoImpl.UserDaoImpl;
import com.bjtu.entity.EmployerUserAuthInfo;
import com.bjtu.entity.NannyUser;
import com.bjtu.entity.NannyUserAuthInfo;
import com.bjtu.entity.OrderInformation;
import com.bjtu.entity.SkillLabel;
import com.bjtu.entity.UserBaseInfo;
import com.bjtu.service.NannyUserService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

@Service
public class NannyUserServiceImpl implements NannyUserService {

	@Autowired
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public NannyUserServiceImpl() {
	}

	@Override
	public List<NannyUser> getAllUser() {
		return userDao.getAllUser();
	}

	@Override
	public boolean isExists(String username) {
		return userDao.isExists(username);
	}

	@Override
	public boolean checkLogin(String username, String password) {
		return userDao.checkLogin(username, password);
	}

	@Override
	public void register(String username, String password) {
		userDao.register(username, password);
	}

	@Override
	public void addBaseInof(UserBaseInfo userBaseInfo) {
		userDao.addUserBaseInfo(userBaseInfo);
	}

	@Override
	public int getIdByUsername(String username) {
		return userDao.getIdByUsername(username);
	}

	@Override
	public void nannyAuth(NannyUserAuthInfo nannyUserAuthInfo) {
		userDao.nannyUserAuthInfo(nannyUserAuthInfo);
	}

	@Override
	public void employerAuth(EmployerUserAuthInfo employerUserAuthInfo) {
		userDao.employerUserAuthInfo(employerUserAuthInfo);
	}

	@Override
	public String getIdentityById(int user_id) {
		return userDao.getIdentity(user_id);
	}

	@Override
	public EmployerUserAuthInfo getEmployerById(int user_id) {
		return userDao.getEmployerInfoById(user_id);
	}

	@Override
	public NannyUserAuthInfo getNannyById(int user_id) {
		return userDao.getNannyInfoById(user_id);
	}

	/**
	 * 月嫂认证json数据
	 */
	@Override
	public String getNannyJson(NannyUserAuthInfo nanny) {
		StringBuilder sb = new StringBuilder("{");
		String target_city = nanny.getTarget_city();
		sb.append("\"targetCity\":" + "\"" + target_city + "\",");
		String is_home = nanny.getIs_home();
		sb.append("\"is_home\":" + "\"" + is_home + "\",");
		String experience = nanny.getExperience();
		sb.append("\"experience\":" + "\"" + experience + "\",");
		String education = nanny.getEducation();
		sb.append("\"education\":" + "\"" + education + "\",");
		String salary = Integer.toString(nanny.getSalary());
		sb.append("\"salary\":" + "\"" + salary + "\",");
		String vacation = Integer.toString(nanny.getVacation());
		sb.append("\"vacation\":" + "\"" + vacation + "\",");
		String nation = nanny.getNation();
		sb.append("\"nation\":" + "\"" + nation + "\",");
		String faith = nanny.getFaith();
		sb.append("\"faith\":" + "\"" + faith + "\",");
		String marry_status = nanny.getMarry_status();
		sb.append("\"marry_status\":" + "\"" + marry_status + "\",");
		String child_is_local = nanny.getChild_is_local();
		sb.append("\"child_is_local\":" + "\"" + child_is_local + "\",");
		String parent_is_local = nanny.getParent_is_local();
		sb.append("\"parent_is_local\":" + "\"" + parent_is_local + "\",");
		String introduction = nanny.getIntroduction();
		sb.append("\"introduction\":" + "\"" + introduction + "\",");
		String remark = nanny.getRemark();
		sb.append("\"remark\":" + "\"" + remark + "\"}");
		return sb.toString();
	}

	/**
	 * 雇主认证json数据
	 */
	@Override
	public String getEmployerJson(EmployerUserAuthInfo employer) {
		StringBuilder sb = new StringBuilder("{");
		String work_address = employer.getWork_address();
		sb.append("\"work_address\":" + "\"" + work_address + "\",");
		String is_home = employer.getIs_home();
		sb.append("\"is_home\":" + "\"" + is_home + "\",");
		String experience_need = employer.getExperience_need();
		sb.append("\"experience_need\":" + "\"" + experience_need + "\",");
		String education = employer.getEducation();
		sb.append("\"education\":" + "\"" + education + "\",");
		String can_pay = Integer.toString(employer.getCan_pay());
		sb.append("\"can_pay\":" + "\"" + can_pay + "\",");
		String vacation = Integer.toString(employer.getVacation());
		sb.append("\"vacation\":" + "\"" + vacation + "\",");
		String baby_birth = employer.getBaby_birth();
		String date[] = baby_birth.split("/");
		String year = date[0];
		sb.append("\"year\":" + "\"" + year + "\",");
		String month = date[1];
		sb.append("\"month\":" + "\"" + month + "\",");
		String day = date[2];
		sb.append("\"day\":" + "\"" + day + "\",");
		String baby_weight = Double.toString(employer.getBaby_weight());
		sb.append("\"baby_weight\":" + "\"" + baby_weight + "\",");
		String mother_age = Integer.toString(employer.getMother_age());
		sb.append("\"mother_age\":" + "\"" + mother_age + "\",");
		String mother_weight = Double.toString(employer.getMother_weight());
		sb.append("\"mother_weight\":" + "\"" + mother_weight + "\",");
		String mother_height = Integer.toString(employer.getMother_height());
		sb.append("\"mother_height\":" + "\"" + mother_height + "\",");
		String childbirth_count = Integer.toString(employer.getChildbirth_count());
		sb.append("\"childbirth_count\":" + "\"" + childbirth_count + "\",");
		String childbirth_method = employer.getChildbirth_method();
		sb.append("\"childbirth_method\":" + "\"" + childbirth_method + "\"");
		sb.append("}");
		return sb.toString();
	}

	@Override
	public String getBaseInfo(int user_id) {
		UserBaseInfo user = userDao.getUserBaseInfo(user_id);
		JSONObject jsonObj = JSONObject.fromObject(user);
		return jsonObj.toString();
	}

	@Override
	public String addSkillLabel(int user_id, String skill) {
		JSONObject jsonObj = JSONObject.fromObject(skill);
		String skillName = (String) jsonObj.get("skillName");
		String skillDescribe = (String) jsonObj.get("skillDescribe");
		userDao.addSkillDescribe(user_id, skillName, skillDescribe);
		return skill;
	}

	/**
	 * 获取月嫂基本信息以及认证信息
	 */
	@Override
	public String getNannyInfo(int user_id) {
		String nannyAuthJson = null;
		StringBuilder sb = new StringBuilder("[");
		NannyUserAuthInfo nannyUserAuthInfo = getNannyById(user_id);
		List list = userDao.getAllLabel(user_id);
		String labelJson = userDao.getSkillLabelJson(list, user_id);
		sb.append(labelJson+",");
		JsonConfig config = new JsonConfig();
		config.setExcludes(new String[] { "labels" });			//去除延迟加载的属性"labels"
		if(nannyUserAuthInfo!=null)
		{
			nannyAuthJson = JSONArray.fromObject(nannyUserAuthInfo, config).toString();
		}
		else
			nannyAuthJson = "[]";
		sb.append(nannyAuthJson+",");
		
		UserBaseInfo userBaseInfo = getUserBaseInfo(user_id);
		String userBaseInfoJson = null;
		String userBaseInfoJsonArray = null;
		if(userBaseInfo!=null){
			userBaseInfoJson = (JSONObject.fromObject(userBaseInfo)).toString();
			userBaseInfoJsonArray = "["+userBaseInfoJson+"]";
		}else{
			userBaseInfoJsonArray= "[]";
		}
		sb.append(userBaseInfoJsonArray+"]");
		return sb.toString();
	}

	@Override
	public UserBaseInfo getUserBaseInfo(int user_id) {
		return userDao.getUserBaseInfo(user_id);
	}

	@Override
	public NannyUser getUserInfo(int user_id) {
		return userDao.getNannyUser(user_id);
	}

	@Override
	public String addDescription(int user_id, String skill) {
		JSONObject jsonObj = JSONObject.fromObject(skill);
		String skillName = (String) jsonObj.get("skillName");
		String skillDescribe = (String) jsonObj.get("skillDescribe");
		userDao.addEmployerSkill(user_id, skillName, skillDescribe);
		return skill;
	}

	@Override
	public void addOrder(String lastTime, String startTime, String endTime, String lowSalary, String highSalary,
			String city, int user_id, int employer_id) {
		OrderInformation order = new OrderInformation();
		order.setAddress(city);
		order.setEmployer_id(employer_id);
		order.setEndTime(endTime);
		order.setHighSalary(highSalary);
		order.setLowSalary(lowSalary);
		order.setTheLastTime(lastTime);
		order.setNanny_id(user_id);
		order.setStartTime(startTime);
		userDao.addOrderInfo(order);
	}

}
