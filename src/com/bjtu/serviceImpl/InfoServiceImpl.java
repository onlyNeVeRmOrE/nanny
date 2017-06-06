package com.bjtu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjtu.dao.UserDao;
import com.bjtu.dao.UserInfoDao;
import com.bjtu.service.InfoService;

import net.sf.json.JsonConfig;

@Service
public class InfoServiceImpl implements InfoService{

	@Autowired
	private UserInfoDao userInfoDao;
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public String getUserBaseInfo(int user_id) {
		String temp = userInfoDao.getUserBaseInfo(user_id);
		return temp;
	}

	@Override
	public String getNannyUserAuthInfo(int user_id) {
		String temp = userInfoDao.getNannyUserAuthInfo(user_id);
		return temp;
	}

	@Override
	public String getEmployerUserAuthInfo(int user_id) {
		String temp = userInfoDao.getEmployerUserAuthInfo(user_id);
		return temp;
	}

	@Override
	public String getOrderInfo(int user_id) {
		String result = userInfoDao.getOrderInfo(user_id);
		return result;
	}

	@Override
	public String getSkillLabelInfo(int user_id) {
		List list = userDao.getAllLabel(user_id);
		return userDao.getSkillLabelJson(list, user_id);
	}

	@Override
	public String getIdentity(int user_id) {
		return userInfoDao.getIdentityJson(user_id);
	}

	@Override
	public String getEmployerLabel(int user_id) {
		List list  = userDao.getAllEmployerLabel(user_id);
		return userDao.getEmployerLabelJson(list, user_id);
	}

	@Override
	public String getEmployerInfo(int nanny_id) {
		return userInfoDao.getEmployerInfo(nanny_id);
	}
	
}
