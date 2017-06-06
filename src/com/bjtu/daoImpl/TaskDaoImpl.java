package com.bjtu.daoImpl;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.bjtu.dao.task.TaskDao;
import com.bjtu.entity.OrderInformation;
import com.bjtu.entity.task.HistoryTask;
import com.bjtu.entity.task.SingTask;

@Repository
public class TaskDaoImpl implements TaskDao {

	/***** 注入 *****/
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	/**
	 * 添加单个任务
	 */
	@Override
	public void addSingleTask(SingTask singleTask) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		try {
			session.save(singleTask);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			tx.commit();
			session.close();
		}
	}

	/**
	 * 添加历史任务
	 */
	@Override
	public void addHistoryTask(HistoryTask historyTask) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		try {
			session.save(historyTask);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			tx.commit();
			session.close();
		}
	}
	
	@Override
	public int getNannyIdByEmployerId(int employer_id) {
		Query query = sessionFactory.openSession().createQuery("from OrderInformation u where u.employer_id = :employer_id")
				.setParameter("employer_id", employer_id);
		OrderInformation order = null;
		int result ;
		if(query.list().size()!=0)
			 order = (OrderInformation) query.list().get(0);
		if(order!=null)
			result = order.getNanny_id();
		else
			result = 0;
		return result;
	}
	
	@Override
	public int getEmployerIdByNannyId(int nanny_id) {
		Query query = sessionFactory.openSession().createQuery("from OrderInformation u where u.nanny_id = :nanny_id")
				.setParameter("nanny_id", nanny_id);
		OrderInformation order = null;
		int result ;
		if(query.list().size()!=0)
			 order = (OrderInformation) query.list().get(0);
		if(order!=null)
			result = order.getEmployer_id();
		else
			result = 0;
		return result;
		
	}

	@Override
	public List getEmployerAndTask(int nanny_id) {
		Query query = sessionFactory.openSession().createQuery("from SingTask u where u.nanny_id = :nanny_id")
				.setParameter("nanny_id", nanny_id);
		List<SingTask> list = query.list();
		return list;
	}

	@Override
	public List getNannyAndTask(int employer_id) {
		Query query = sessionFactory.openSession().createQuery("from SingTask u where u.employer_id = :employer_id")
				.setParameter("employer_id", employer_id);
		List<SingTask> list = query.list();
		return list;
	}

	/**
	 * 月嫂，雇主所有任务
	 * */
	@Override
	public List getAllTask(int user_id, String identity) {
		//生成前一天时间
		Calendar now = Calendar.getInstance();  
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH)+1;
		int day = now.get(Calendar.DAY_OF_MONTH);
		String date = year+"/"+month+"/"+(day-1);
		System.out.println(date); 
		Query query = null;
		if(identity.equals("nanny")){
			query = sessionFactory.openSession().createQuery("from SingTask u where u.nanny_id = :nanny_id and u.time = :time")
					.setParameter("nanny_id", user_id).setParameter("time", date);
		}else if(identity.equals("employer")){
			query = sessionFactory.openSession().createQuery("from SingTask u where u.employer_id = :employer_id and u.time = :time")
			.setParameter("employer_id", user_id).setParameter("time", date);
		}else{
			//
		}
		List<SingTask> list = query.list();
		return list;
	}
	
	/**
	 * 查询模板方法
	 * */
	public List getTemplate(String className,HashMap<String,Object> params){
		List list = null;
		String hql = "from" +className + "t where";
		Iterator iter = params.entrySet().iterator();
		Map.Entry entry = (Map.Entry) iter.next();
		while (iter.hasNext()) {
			Object paramName = entry.getKey();
			Object paramValue = entry.getValue();
			hql += " t." + paramName.toString()+" :"+paramValue;
			entry = (Map.Entry) iter.next();
			if(iter.hasNext())
				hql+=" and";
		}
		
		Query query = sessionFactory.openSession().createQuery(hql);
		//设置查询参数
		Iterator iterTwo = params.entrySet().iterator();
		Map.Entry entryTwo = (Map.Entry) iter.next();
		while(iterTwo.hasNext()){
			Object paramName = entryTwo.getKey();
			Object paramValue = entryTwo.getValue();
			query.setParameter(paramName.toString(), paramValue);
		}
		list = query.list();
		return list;
	}

	/**
	 * 打分
	 * */
	@Override
	public void markStar(int user_id, int star,String task,String time) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		String hql = "update SingTask s set s.comment = "+star+" where s.taskDetails = :taskDetails and s.time = :time";
		Query query = session.createQuery(hql);
		query.setParameter("taskDetails", task);
		query.setParameter("time", time);
		query.executeUpdate();
		tx.commit();
		session.close();
	}

	@Override
	public void dissEmployment(int user_id, String identity) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		String orderUpdate = "delete OrderInformation where ";
		String taskUpdate = "delete SingTask where ";
		if(identity.equals("employer")){
			orderUpdate += "employer_id = :employer_id";
			taskUpdate += "employer_id = :employer_id";
			session.createQuery(orderUpdate).setParameter("employer_id", user_id).executeUpdate();
			session.createQuery(taskUpdate).setParameter("employer_id", user_id).executeUpdate();
		}else if(identity.equals("nanny")){
			orderUpdate += "nanny_id = :nanny_id";
			taskUpdate += "nanny_id = :nanny_id";
			session.createQuery(orderUpdate).setParameter("nanny_id", user_id).executeUpdate();
			session.createQuery(taskUpdate).setParameter("nanny_id", user_id).executeUpdate();
		}
		
	}

	/**
	 * 修改订单状态
	 * */
	@Override
	public void updateOrderStatus(int user_id, String identity, String status) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		String hql = "update OrderInformation o set o.status = '"+status + "' where";
		Query query = null;
		if(identity.equals("employer")){
			hql +=" o.employer_id = :employer_id";
			query = session.createQuery(hql);
			query.setParameter("employer_id", user_id);
		}else if(identity.equals("nanny")){
			hql +=" o.nanny_id = :nanny_id";
			query = session.createQuery(hql);
			query.setParameter("nanny_id", user_id);
		}else{
			//
		}
		query.executeUpdate();
		tx.commit();
		session.close();
	}
}
