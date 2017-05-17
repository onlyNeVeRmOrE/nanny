package com.bjtu.dao;

import java.util.List;

import com.bjtu.entity.EmployerLabel;
import com.bjtu.entity.EmployerUserAuthInfo;
import com.bjtu.entity.NannyUser;
import com.bjtu.entity.NannyUserAuthInfo;
import com.bjtu.entity.OrderInformation;
import com.bjtu.entity.SkillLabel;
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
    
    //月嫂用户信息认证
    public void nannyUserAuthInfo(NannyUserAuthInfo nannyUserAuthInfo);
    
    //雇主信息认证
    public void employerUserAuthInfo(EmployerUserAuthInfo employer);
    
    //根据userID获取身份信息
    public String getIdentity(int user_id);
    
    //根据user_id获取雇主认证信息
    public EmployerUserAuthInfo getEmployerInfoById(int user_id);
    
    //根据user_id获取月嫂认证信息
    public NannyUserAuthInfo getNannyInfoById(int user_id);

    //根据id获取用户信息
	public NannyUser getNannyUser(int id);
	
	//根据id获取用户基本信息
	public UserBaseInfo getUserBaseInfo(int user_id);
	
	public List<OrderInformation> getOrderInfo(int user_id);
	
	//添加月嫂技能描述
	public void addSkillDescribe(int user_id,String skillName,String skillDescribe);
	
	//添加雇主技能标签描述
	public void addEmployerSkill(int user_id,String skillName,String skillDescribe);
	
	//获取月嫂用户所有标签
	public List<SkillLabel> getAllLabel(int user_id);
	
	//获取雇主用户所有标签
	public List<EmployerLabel> getAllEmployerLabel(int user_id);
	
	//取得月搜标签JSON
	public String getSkillLabelJson(List<SkillLabel> list,int user_id);
	
	//取得雇主标签JSON
	public String getEmployerLabelJson(List<EmployerLabel> list,int user_id);
	
	//添加订单信息
	public void addOrderInfo(OrderInformation order);
}
