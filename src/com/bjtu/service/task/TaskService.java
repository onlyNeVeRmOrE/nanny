package com.bjtu.service.task;

import com.bjtu.entity.task.HistoryTask;
import com.bjtu.entity.task.SingTask;

public interface TaskService {

	public void addSingleTask(SingTask singleTask);
	
	public void addHistoryTask(HistoryTask historyTask);
	
	public int getNannyIdByEmployerId(int employer_id);
	
	public int getEmployerIdByNannyId(int nanny_id);
	
	public String getEmployerAndTask(int nanny_id);
	
	public String getNannyAndTask(int employer_id);
	
	public String getAllTask(int user_Id,String identity);
	
	public void markStar(int user_id,int star,String task,String time);
	
	public void dissEmployment(int user_id,String identity);
	
	public void updateOrderStatus(int user_id,String identity,String status);
	
}
