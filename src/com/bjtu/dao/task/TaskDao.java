package com.bjtu.dao.task;

import java.util.List;

import com.bjtu.entity.task.HistoryTask;
import com.bjtu.entity.task.SingTask;

public interface TaskDao {
	
	//添加单个任务
	public void addSingleTask(SingTask singleTask);
	
	//添加历史任务
	public void addHistoryTask(HistoryTask historyTask);
	
	//查找nanny_id
	public int getNannyIdByEmployerId(int employer_id); 
	
	//查找employer_id
	public int getEmployerIdByNannyId(int nanny_id);
	
	//查找雇主信息和任务详情
	public List getEmployerAndTask(int nanny_id);
	
	//查找月嫂信息和任务详情
	public List getNannyAndTask(int employer_id);
	
	//查找所有任务
	public List getAllTask(int user_id,String identity);
	
	//打星
	public void markStar(int user_id,int star,String task,String time);
	
	//接触雇约
	public void dissEmployment(int user_id,String identity);
	
	//修改订单状态
	public void updateOrderStatus(int user_id,String identity,String status);
	
}
