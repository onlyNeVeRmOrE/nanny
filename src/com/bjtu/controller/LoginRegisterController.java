package com.bjtu.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjtu.entity.UserBaseInfo;
import com.bjtu.service.NannyUserService;
import com.bjtu.util.ResponseUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * ��¼ע�������
 */

@Controller
public class LoginRegisterController {

	@Autowired
	private NannyUserService nannyUserService;

	/**
	 * ��֤�˺�����
	 */
	@RequestMapping(value = "/login")
	@ResponseBody
	public String login(@RequestParam String username, @RequestParam String password, HttpServletRequest request)
			throws IOException {
		ResponseUtil response = new ResponseUtil();
		if (!isExist(username) || !checkLogin(username, password)) // �ж��˻��Ƿ����
			response.setAuthResult("false");
		else {
			response.setAuthResult("true");
			request.getSession().setAttribute("sessionName", username); // ��Session�����û���
			request.getSession().setAttribute("sessionPwd", password); // ��������
		}
		ObjectMapper objectMapper = new ObjectMapper();
		String jsonString = objectMapper.writeValueAsString(response);
		return jsonString;
	}

	/**
	 * ��֤�����Ƿ����
	 * 
	 * @throws IOException
	 */
	@RequestMapping(value = "/exist")
	@ResponseBody
	public String emailIsExist(@RequestParam String email) throws IOException {
		ResponseUtil response = new ResponseUtil();
		if (isExist(email))
			response.setEmailIsExist("true");
		else
			response.setEmailIsExist("false");
		ObjectMapper objectMapper = new ObjectMapper();
		String jsonString = objectMapper.writeValueAsString(response);
		return jsonString;
	}

	/**
	 * ע��
	 */
	@RequestMapping(value = "/register")
	@ResponseBody
	public void register(@RequestParam String username, @RequestParam String password) {
		nannyUserService.register(username, password);
	}

	/**
	 * ע��
	 */
	@RequestMapping(value = "/logout")
	@ResponseBody
	public String logout(HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		ResponseUtil response = new ResponseUtil();
		session.invalidate();
		response.setLogoutResult("true");
		ObjectMapper objectMapper = new ObjectMapper();
		String jsonString = objectMapper.writeValueAsString(response);
		return jsonString;
	}

	/**
	 * ����û�������Ϣ
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/addBaseInfo")
	@ResponseBody
	public void addBaseInfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("sessionName");
		int id = nannyUserService.getIdByUsername(email);
		String username = request.getParameter("username");
		String id_card = request.getParameter("IDnumber");
		String appellation = request.getParameter("appellation");		//�ƺ�
		String city = request.getParameter("city");
		String residence = request.getParameter("residence");			//��ס��
		String phoneNumber = request.getParameter("phoneNumber");
		UserBaseInfo userBaseInfo = new UserBaseInfo();
		userBaseInfo.setUser_id(id);
		userBaseInfo.setName(username);
		userBaseInfo.setId_card(id_card);
		userBaseInfo.setCity(city);
		userBaseInfo.setAddress(residence);
		userBaseInfo.setPhoneNumber(phoneNumber);
		nannyUserService.addBaseInof(userBaseInfo);
	}

	// �ж��û��˺��Ƿ����
	public boolean isExist(String username) {
		return nannyUserService.isExists(username);
	}

	// �ж��˺������Ƿ���ȷ
	public boolean checkLogin(String username, String password) {
		return nannyUserService.checkLogin(username, password);
	}

}
