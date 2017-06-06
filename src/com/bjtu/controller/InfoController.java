package com.bjtu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjtu.service.InfoService;
import com.bjtu.service.NannyUserService;

@Controller
public class InfoController {
	
	@Autowired
	private NannyUserService nannyUserService;

	@Autowired
	private InfoService userInfoService;
	
	/**
	 * 获取用户身份信息
	 * */
	@RequestMapping(value="/getUserIdentity",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String getUserIdentity(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		return userInfoService.getIdentity(user_id);
	}
	/**
	 * 获取月嫂个人信息，身份信息，标签信息
	 */
	@RequestMapping(value = "/getNannyIdentityLabel", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String getNannyIdentityLabel(HttpServletRequest request) {
		StringBuilder sb = new StringBuilder("[");
		int user_id = getUserIdBySession(request);
		String identity = userInfoService.getIdentity(user_id);
		String nanny = userInfoService.getNannyUserAuthInfo(user_id);
		String skill = userInfoService.getSkillLabelInfo(user_id);
		sb.append(identity+","+nanny+","+skill+"]");
		return sb.toString();
	}
	
	/**
	 * 获取身份信息，个人信息，标签信息
	 * */
	@RequestMapping(value="/getEmployerIdentityLabel",produces="application/json; charset=utf-8")
	@ResponseBody
	public String getEmployerIdentityLabel(HttpServletRequest request){
		StringBuilder sb = new StringBuilder("[");
		int user_id = getUserIdBySession(request);
		String identity = userInfoService.getIdentity(user_id);
		String employer = userInfoService.getEmployerUserAuthInfo(user_id);
		String skill = userInfoService.getEmployerLabel(user_id);
		sb.append(identity+","+employer+","+skill+"]");
		return sb.toString();
	}
	
	/**
	 * 获取雇主信息，订单信息
	 * */
	@RequestMapping(value="/getNannyOrder",produces="application/json; charset=utf-8")
	@ResponseBody
	public String getNannyOrder(HttpServletRequest request){
		int user_id = getUserIdBySession(request);
		return userInfoService.getOrderInfo(user_id);
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
