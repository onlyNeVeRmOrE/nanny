package com.bjtu.service;

public interface InfoService {

	// ��ȡ�û�������ϢJSON
	public String getUserBaseInfo(int user_id);

	// ��ȡ��ɩ��֤��ϢJSON
	public String getNannyUserAuthInfo(int user_id);

	// ��ȡ������֤��ϢJSON
	public String getEmployerUserAuthInfo(int user_id);

	// ��ȡĳ����������ϢJSON
	public String getOrderInfo(int employer_id);
	
	//��ȡ��ɩ���ܱ�ǩJSON
	public String getSkillLabelInfo(int user_id);
	
	//��ȡ�������ܱ�ǩJSON
	public String getEmployerLabel(int user_id);
	
	//��ȡ�����ϢJSON
	public String getIdentity(int user_id);

}
