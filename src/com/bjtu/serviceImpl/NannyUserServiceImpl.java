package com.bjtu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjtu.dao.UserDao;
import com.bjtu.daoImpl.UserDaoImpl;
import com.bjtu.entity.NannyUser;
import com.bjtu.entity.UserBaseInfo;
import com.bjtu.service.NannyUserService;

@Service
public class NannyUserServiceImpl implements NannyUserService{
	
	@Autowired
    private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public NannyUserServiceImpl(){
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
	
}
