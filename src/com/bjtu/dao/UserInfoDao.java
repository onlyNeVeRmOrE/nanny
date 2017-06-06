package com.bjtu.dao;
/**
 * 用户信息接口
 * */
public interface UserInfoDao {
	
	//获取用户基本信息JSON
	public String getUserBaseInfo(int user_id);
	
	//获取月嫂认证信息JSON
	public String getNannyUserAuthInfo(int user_id);
	
	//获取雇主认证信息JSON
	public String getEmployerUserAuthInfo(int user_id);
	
	//获取某雇主订单信息JSON
	public String getOrderInfo(int employer_id);
	
	//获取用户身份信息JSON
	public String getIdentityJson(int user_id);
	
}
