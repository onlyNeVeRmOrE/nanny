package com.bjtu.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bjtu.service.NannyUserService;
import com.bjtu.util.ResponseUtil;
import com.fasterxml.jackson.databind.ObjectMapper;


/**
 * 登录注册控制器
 */

@Controller
public class LoginRegisterController {

	@Autowired
	private NannyUserService nannyUserService;

	/**
	 * 验证账号密码
	 * */
	@RequestMapping(value = "/login")
	@ResponseBody
	public String login(@RequestParam String username, @RequestParam String password,HttpServletRequest request) throws IOException {
		ResponseUtil response = new ResponseUtil();
		if (!isExist(username) || !checkLogin(username, password)) // 判断账户是否存在
			response.setAuthResult("false");
		else{
			response.setAuthResult("true");
			request.getSession().setAttribute("sessionName",username);     //用Session保存用户名
			request.getSession().setAttribute("sessionPwd",password);        //保存密码
		}
		ObjectMapper objectMapper = new ObjectMapper();
		String jsonString = objectMapper.writeValueAsString(response);
		return jsonString;
	}
	
	/**
	 * 验证邮箱是否存在
	 * @throws IOException 
	 * */
	@RequestMapping(value="/exist")
	@ResponseBody
	public String emailIsExist(@RequestParam String email) throws  IOException{
		ResponseUtil response = new ResponseUtil();
		if(isExist(email))
			response.setEmailIsExist("true");
		else
			response.setEmailIsExist("false");
		ObjectMapper objectMapper = new ObjectMapper();
		String jsonString = objectMapper.writeValueAsString(response);
		return jsonString;
	}
	
	/**
	 * 注册
	 * */
	@RequestMapping(value = "/register")
	@ResponseBody
	public void register(@RequestParam String username,@RequestParam String password){
		nannyUserService.register(username, password);
	}
	
	/**
	 * 注销
	 * */
	@RequestMapping(value="/logout")
	@ResponseBody
	public String logout(HttpServletRequest request) throws IOException{
		HttpSession session = request.getSession();
		ResponseUtil response = new ResponseUtil();
		session.invalidate();
		response.setLogoutResult("true");
		ObjectMapper objectMapper = new ObjectMapper();
		String jsonString = objectMapper.writeValueAsString(response);
		return jsonString;
	}

	// 判断用户账号是否存在
	public boolean isExist(String username) {
		return nannyUserService.isExists(username);
	}

	// 判断账号密码是否正确
	public boolean checkLogin(String username, String password) {
		return nannyUserService.checkLogin(username, password);
	}

}
