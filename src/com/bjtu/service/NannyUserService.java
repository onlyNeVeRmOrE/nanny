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
    
    //ע��
    public void register(String username,String password);
    
    //����û�������Ϣ
    public void addBaseInof(UserBaseInfo userBaseInfo);
    
    //����username��ȡid
    public int getIdByUsername(String username);
    
    //��ɩ��Ϣ��֤
    public void nannyAuth(NannyUserAuthInfo nannyUserAuthInfo);
    
    //������Ϣ��֤
    public void employerAuth(EmployerUserAuthInfo employerUserAuthInfo);
    
    //����ID��ȡ�����Ϣ
    public String getIdentityById(int user_id);
    
    //����ID��ȡ������֤��Ϣ
    public EmployerUserAuthInfo getEmployerById(int user_id);
    
    //����ID��ȡ��ɩ��֤��Ϣ
    public NannyUserAuthInfo getNannyById(int user_id);
    
    //��ȡ�û�������Ϣ
    public UserBaseInfo getUserBaseInfo(int user_id);
    
    //��ȡ�û���Ϣ
    public NannyUser getUserInfo(int user_id);
    
    //������ɩ�û���json�ַ���
    public String getNannyJson(NannyUserAuthInfo nanny);
    
    //���ɹ�����json�ַ���
    public String getEmployerJson(EmployerUserAuthInfo employer);
    
    //��ȡ������Ϣ����json
    public String getBaseInfo(int user_id);
    
    //�����ɩ���ܱ�ǩ������
    public String addSkillLabel(int user_id,String skill);
    
    //��ӹ������ܱ�ǩ����
    public String addDescription(int user_id,String skill);
    
    //��ȡ��ɩ�û�������Ϣ��֤��Ϣ
	public String getNannyInfo(int user_id);
	
	//��Ӷ�����Ϣ
	public void addOrder(String lastTime,String startTime,
			String endTime,String lowSalary,String highSalary,String city,int user_id,int employer_id);
	
}
