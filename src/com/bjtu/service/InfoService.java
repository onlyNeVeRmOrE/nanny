package com.bjtu.service;

public interface InfoService {

	// 获取用户基本信息JSON
	public String getUserBaseInfo(int user_id);

	// 获取月嫂认证信息JSON
	public String getNannyUserAuthInfo(int user_id);

	// 获取雇主认证信息JSON
	public String getEmployerUserAuthInfo(int user_id);

	// 获取某雇主订单信息JSON
	public String getOrderInfo(int employer_id);
	
	//获取月嫂技能标签JSON
	public String getSkillLabelInfo(int user_id);
	
	//获取雇主技能标签JSON
	public String getEmployerLabel(int user_id);
	
	//获取身份信息JSON
	public String getIdentity(int user_id);

}
