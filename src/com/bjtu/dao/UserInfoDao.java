package com.bjtu.dao;
/**
 * �û���Ϣ�ӿ�
 * */
public interface UserInfoDao {
	
	//��ȡ�û�������ϢJSON
	public String getUserBaseInfo(int user_id);
	
	//��ȡ��ɩ��֤��ϢJSON
	public String getNannyUserAuthInfo(int user_id);
	
	//��ȡ������֤��ϢJSON
	public String getEmployerUserAuthInfo(int user_id);
	
	//��ȡĳ����������ϢJSON
	public String getOrderInfo(int employer_id);
	
	//��ȡ�û������ϢJSON
	public String getIdentityJson(int user_id);
	
}
