package com.bjtu.serviceImpl.taskServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bjtu.dao.task.TaskDao;
import com.bjtu.entity.task.HistoryTask;
import com.bjtu.entity.task.SingTask;
import com.bjtu.service.task.TaskService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class TaskServiceImpl implements TaskService{
	
	@Autowired
	private TaskDao taskDao;

	@Override
	public void addSingleTask(SingTask singleTask) {
		taskDao.addSingleTask(singleTask);
	}

	@Override
	public void addHistoryTask(HistoryTask historyTask) {
		taskDao.addHistoryTask(historyTask);
	}

	@Override
	public int getNannyIdByEmployerId(int employer_id) {
		return taskDao.getNannyIdByEmployerId(employer_id);
	}
	
	@Override
	public int getEmployerIdByNannyId(int nanny_id) {
		return taskDao.getEmployerIdByNannyId(nanny_id);
	}

	@Override
	public String getEmployerAndTask(int nanny_id) {
		List<SingTask> list = taskDao.getEmployerAndTask(nanny_id);
		JSONArray jsonObj = JSONArray.fromObject(list);
		return jsonObj.toString();
	}

	@Override
	public String getNannyAndTask(int employer_id) {
		List<SingTask> list = taskDao.getNannyAndTask(employer_id);
		JSONArray jsonObj = JSONArray.fromObject(list);
		return jsonObj.toString();
	}

	@Override
	public String getAllTask(int user_Id, String identity) {
		List<SingTask>  list = taskDao.getAllTask(user_Id, identity);
		JSONArray jsonObj = JSONArray.fromObject(list);
		return jsonObj.toString();
	}

	@Override
	public void markStar(int user_id, int star,String task,String time) {
		taskDao.markStar(user_id, star, task, time);
	}

	@Override
	public void dissEmployment(int user_id, String identity) {
		taskDao.dissEmployment(user_id, identity);
	}

	@Override
	public void updateOrderStatus(int user_id, String identity, String status) {
		taskDao.updateOrderStatus(user_id, identity, status);
	}

}
