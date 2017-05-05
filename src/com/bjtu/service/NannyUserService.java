package com.bjtu.service;

import java.util.List;

import com.bjtu.entity.NannyUser;
import com.bjtu.entity.UserBaseInfo;

public interface NannyUserService {
	public List<NannyUser> getAllUser();
    public boolean isExists(String username);
    public boolean checkLogin(String username,String password);
    
    //注册
    public void register(String username,String password);
    
    //添加用户基本信息
    public void addBaseInof(UserBaseInfo userBaseInfo);
    
    //根据username获取id
    public int getIdByUsername(String username);
}
