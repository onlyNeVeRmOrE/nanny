package com.bjtu.dao.task;

import java.util.List;

import com.bjtu.entity.task.HistoryTask;
import com.bjtu.entity.task.SingTask;

public interface TaskDao {
	
	//��ӵ�������
	public void addSingleTask(SingTask singleTask);
	
	//�����ʷ����
	public void addHistoryTask(HistoryTask historyTask);
	
	//����nanny_id
	public int getNannyIdByEmployerId(int employer_id); 
	
	//����employer_id
	public int getEmployerIdByNannyId(int nanny_id);
	
	//���ҹ�����Ϣ����������
	public List getEmployerAndTask(int nanny_id);
	
	//������ɩ��Ϣ����������
	public List getNannyAndTask(int employer_id);
	
	//������������
	public List getAllTask(int user_id,String identity);
	
	//����
	public void markStar(int user_id,int star,String task,String time);
	
	//�Ӵ���Լ
	public void dissEmployment(int user_id,String identity);
	
	//�޸Ķ���״̬
	public void updateOrderStatus(int user_id,String identity,String status);
	
}
