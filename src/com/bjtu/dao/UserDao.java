package com.bjtu.dao;

import java.util.List;

import com.bjtu.entity.NannyUser;
import com.bjtu.entity.UserBaseInfo;

public interface UserDao {
	// 得到所有用户
    public List<NannyUser> getAllUser();

    // 检测用户名是否存在
    public boolean isExists(String username);
    
    //检测账号密码是否正确
    public boolean checkLogin(String username,String password);
    
    //注册
    public void register(String username,String password);
    
    //添加用户基本信息
    public void addUserBaseInfo(UserBaseInfo userBaseInfo);
    
    //根据username获取ID
    public int getIdByUsername(String username);
}
