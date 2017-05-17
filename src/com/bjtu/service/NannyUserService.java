package com.bjtu.service;

import java.util.List;

import com.bjtu.entity.EmployerUserAuthInfo;
import com.bjtu.entity.NannyUser;
import com.bjtu.entity.NannyUserAuthInfo;
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
    
    //月嫂信息认证
    public void nannyAuth(NannyUserAuthInfo nannyUserAuthInfo);
    
    //雇主信息认证
    public void employerAuth(EmployerUserAuthInfo employerUserAuthInfo);
    
    //根据ID获取身份信息
    public String getIdentityById(int user_id);
    
    //根据ID获取雇主认证信息
    public EmployerUserAuthInfo getEmployerById(int user_id);
    
    //根据ID获取月嫂认证信息
    public NannyUserAuthInfo getNannyById(int user_id);
    
    //获取用户基本信息
    public UserBaseInfo getUserBaseInfo(int user_id);
    
    //获取用户信息
    public NannyUser getUserInfo(int user_id);
    
    //生成月嫂用户的json字符串
    public String getNannyJson(NannyUserAuthInfo nanny);
    
    //生成雇主的json字符串
    public String getEmployerJson(EmployerUserAuthInfo employer);
    
    //获取基本信息返回json
    public String getBaseInfo(int user_id);
    
    //添加月嫂技能标签及描述
    public String addSkillLabel(int user_id,String skill);
    
    //添加雇主技能标签描述
    public String addDescription(int user_id,String skill);
    
    //获取月嫂用户基本信息认证信息
	public String getNannyInfo(int user_id);
	
	//添加订单信息
	public void addOrder(String lastTime,String startTime,
			String endTime,String lowSalary,String highSalary,String city,int user_id,int employer_id);
	
}
