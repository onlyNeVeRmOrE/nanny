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
	// �õ������û�
    public List<NannyUser> getAllUser();

    // ����û����Ƿ����
    public boolean isExists(String username);
    
    //����˺������Ƿ���ȷ
    public boolean checkLogin(String username,String password);
    
    //ע��
    public void register(String username,String password);
    
    //����û�������Ϣ
    public void addUserBaseInfo(UserBaseInfo userBaseInfo);
    
    //����username��ȡID
    public int getIdByUsername(String username);
    
    //��ɩ�û���Ϣ��֤
    public void nannyUserAuthInfo(NannyUserAuthInfo nannyUserAuthInfo);
    
    //������Ϣ��֤
    public void employerUserAuthInfo(EmployerUserAuthInfo employer);
    
    //����userID��ȡ�����Ϣ
    public String getIdentity(int user_id);
    
    //����user_id��ȡ������֤��Ϣ
    public EmployerUserAuthInfo getEmployerInfoById(int user_id);
    
    //����user_id��ȡ��ɩ��֤��Ϣ
    public NannyUserAuthInfo getNannyInfoById(int user_id);

    //����id��ȡ�û���Ϣ
	public NannyUser getNannyUser(int id);
	
	//����id��ȡ�û�������Ϣ
	public UserBaseInfo getUserBaseInfo(int user_id);
	
	public List<OrderInformation> getOrderInfo(int user_id);
	
	//�����ɩ��������
	public void addSkillDescribe(int user_id,String skillName,String skillDescribe);
	
	//��ӹ������ܱ�ǩ����
	public void addEmployerSkill(int user_id,String skillName,String skillDescribe);
	
	//��ȡ��ɩ�û����б�ǩ
	public List<SkillLabel> getAllLabel(int user_id);
	
	//��ȡ�����û����б�ǩ
	public List<EmployerLabel> getAllEmployerLabel(int user_id);
	
	//ȡ�����ѱ�ǩJSON
	public String getSkillLabelJson(List<SkillLabel> list,int user_id);
	
	//ȡ�ù�����ǩJSON
	public String getEmployerLabelJson(List<EmployerLabel> list,int user_id);
	
	//��Ӷ�����Ϣ
	public void addOrderInfo(OrderInformation order);
}
