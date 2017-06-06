package com.bjtu.daoImpl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import com.bjtu.dao.UserDao;
import com.bjtu.entity.EmployerLabel;
import com.bjtu.entity.EmployerUserAuthInfo;
import com.bjtu.entity.NannyUser;
import com.bjtu.entity.NannyUserAuthInfo;
import com.bjtu.entity.OrderInformation;
import com.bjtu.entity.SkillLabel;
import com.bjtu.entity.UserBaseInfo;

@Repository
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	/***** 注入 *****/
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	/***** bean实例化时执行该方法 *******/
	@Autowired
	public void setSessionFactory() {
		super.setSessionFactory(sessionFactory);
	}

	public UserDaoImpl() {
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<NannyUser> getAllUser() {
		List<NannyUser> userList = new ArrayList<NannyUser>();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from NannyUser");
		userList = query.getResultList();
		tx.commit();
		session.close();
		return userList;
	}

	@Override
	public boolean isExists(String username) {
		Query query = sessionFactory.openSession().createQuery("from NannyUser u where u.username = :username")
				.setParameter("username", username);
		System.out.println(query.list().size());
		return query.list().size() > 0 ? true : false;
	}

	@Override
	public boolean checkLogin(String username, String password) {
		Query query = sessionFactory.openSession()
				.createQuery("from NannyUser u where u.username = :username and u.password= :password");
		query.setParameter("username", username);
		query.setParameter("password", password);
		return query.list().size() > 0 ? true : false;
	}

	@Override
	public void register(String username, String password) {
		NannyUser user = new NannyUser();
		user.setUsername(username);
		user.setPassword(password);
		user.setIdentity("null");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(user);
		tx.commit();
		session.close();
	}

	// 添加用户基本信息
	@Override
	public void addUserBaseInfo(UserBaseInfo userBaseInfo) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(userBaseInfo);
		tx.commit();
		session.close();
	}

	// 获取id
	@Override
	public int getIdByUsername(String username) {
		int id = 0;
		Query query = sessionFactory.openSession().createQuery("from NannyUser u where u.username = :username");
		query.setParameter("username", username);
		List<NannyUser> list = query.list();
		if (list.size() > 0)
			id = list.get(0).getId();
		return id;
	}

	// 添加月嫂认证信息
	@Override
	public void nannyUserAuthInfo(NannyUserAuthInfo nannyUserAuthInfo) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		int user_id = nannyUserAuthInfo.getUser_id();
		NannyUser nanny = getNannyUser(user_id);
		nanny.setIdentity("nanny");
		session.update(nanny);
		session.save(nannyUserAuthInfo);
		tx.commit();
		session.close();
	}

	// 添加雇主信息
	@Override
	public void employerUserAuthInfo(EmployerUserAuthInfo employer) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		int user_id = employer.getUser_id();
		NannyUser nanny = getNannyUser(user_id);
		nanny.setIdentity("employer");
		session.update(nanny);
		session.save(employer);
		tx.commit();
		session.close();
	}

	// 获取身份信息
	@Override
	public String getIdentity(int id) {
		Query query = sessionFactory.openSession().createQuery("from NannyUser u where u.id = :id");
		query.setParameter("id", id);
		List<NannyUser> list = query.list();
		if (list.size() > 0)
			return list.get(0).getIdentity();
		else
			return "null";
	}

	// 获取 EmployerUserAuthInfo
	@Override
	public EmployerUserAuthInfo getEmployerInfoById(int user_id) {
		Query query = sessionFactory.openSession()
				.createQuery("from EmployerUserAuthInfo u where u.user_id = :user_id");
		query.setParameter("user_id", user_id);
		List<EmployerUserAuthInfo> list = query.list();
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}

	// 获取 NannyUserAuthInfo
	@Override
	public NannyUserAuthInfo getNannyInfoById(int user_id) {
		Query query = sessionFactory.openSession().createQuery("from NannyUserAuthInfo u where u.user_id = :user_id");
		query.setParameter("user_id", user_id);
		List<NannyUserAuthInfo> list = query.list();
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}

	// 获取NannyUser
	@Override
	public NannyUser getNannyUser(int id) {
		Query query = sessionFactory.openSession().createQuery("from NannyUser u where u.id = :id");
		query.setParameter("id", id);
		List<NannyUser> list = query.list();
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}

	// 获取UserBaseInfo
	@Override
	public UserBaseInfo getUserBaseInfo(int user_id) {
		Query query = sessionFactory.openSession().createQuery("from UserBaseInfo u where u.user_id = :user_id");
		query.setParameter("user_id", user_id);
		List<UserBaseInfo> list = query.list();
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}
	
	/**
	 * 添加技能标签
	 * */
	@Override
	public void addSkillDescribe(int user_id,String skillName, String skillDescribe) {
		SkillLabel label = new SkillLabel();
		label.setName(skillName);
		label.setDescribetion(skillDescribe);
		NannyUserAuthInfo nannyUserAuthInfo = new NannyUserAuthInfo();
		nannyUserAuthInfo.setUser_id(user_id);
		label.setNannyUserAuthInfo(nannyUserAuthInfo);
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(label);
		tx.commit();
		session.close();
	}

	/**
	 * 获得月嫂所有标签
	 * */
	@Override
	public List<SkillLabel> getAllLabel(int user_id) {
		String Hql = "select s.name from SkillLabel as s where s.nannyUserAuthInfo.user_id ="+user_id;
		Query query = sessionFactory.openSession().createQuery(Hql);
		List list = query.list();
		return list;
	}
	
	/**
	 * 获取雇主所有标签
	 * */
	@Override
	public List<EmployerLabel> getAllEmployerLabel(int user_id) {
		String Hql = "select s.name from EmployerLabel as s where s.employerUserAuthInfo.user_id ="+user_id;
		Query query = sessionFactory.openSession().createQuery(Hql);
		List list = query.list();
		return list;
	}
	
	

	/**
	 * 生成月嫂标签json
	 * */
	@Override
	public String getSkillLabelJson(List list, int user_id) {
		ArrayList<String> temp = new ArrayList<String>();
		StringBuilder sb = new StringBuilder("[");
		for(int i=0;i<list.size();i++){
			String skill = list.get(i).toString();
			String Hql = "select s.describetion from SkillLabel as s where s.nannyUserAuthInfo.user_id = "+user_id+" and s.name = '"+skill+"'";
			Query query = sessionFactory.openSession().createQuery(Hql);
			List result = query.list();
			String describetion = result.get(0).toString();
			String json = "{\"skillName\":\""+skill+"\","+"\"skillDescribe\":\""+describetion+"\"}";
			temp.add(json);
		}
		for(int j=0;j<temp.size();j++){
			sb.append(temp.get(j));
			if(j+1!=temp.size())
				sb.append(",");
		}
		sb.append("]");
		return sb.toString();
	}
	
	/**
	 * 生成雇主标签json
	 * */
	@Override
	public String getEmployerLabelJson(List list, int user_id) {
		ArrayList<String> temp = new ArrayList<String>();
		StringBuilder sb = new StringBuilder("[");
		for(int i=0;i<list.size();i++){
			String skill = list.get(i).toString();
			String Hql = "select s.describetion from EmployerLabel as s where s.employerUserAuthInfo.user_id = "+user_id+" and s.name = '"+skill+"'";
			Query query = sessionFactory.openSession().createQuery(Hql);
			List result = query.list();
			String describetion = result.get(0).toString();
			String json = "{\"skillName\":\""+skill+"\","+"\"skillDescribe\":\""+describetion+"\"}";
			temp.add(json);
		}
		for(int j=0;j<temp.size();j++){
			sb.append(temp.get(j));
			if(j+1!=temp.size())
				sb.append(",");
		}
		sb.append("]");
		return sb.toString();
	}


	@Override
	public void addEmployerSkill(int user_id, String skillName, String skillDescribe) {
		EmployerLabel employerLabel = new EmployerLabel();
		employerLabel.setName(skillName);
		employerLabel.setDescribetion(skillDescribe);
		EmployerUserAuthInfo employer = new EmployerUserAuthInfo();
		employer.setUser_id(user_id);
		employerLabel.setEmployerUserAuthInfo(employer);
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(employerLabel);
		tx.commit();
		session.close();
	}

	//添加订单信息
	@Override
	public void addOrderInfo(OrderInformation order) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(order);
		tx.commit();
		session.close();
	}

	@Override
	public List<OrderInformation> getOrderInfo(int user_id) {
		Query query = sessionFactory.openSession().createQuery("from OrderInformation o where o.nanny_id = :nanny_id");
		query.setParameter("nanny_id", user_id);
		List<OrderInformation> list = query.list();
		if (list.size() > 0)
			return list;
		else
			return null;
	}

	@Override
	public List<OrderInformation> getEmployerOrder(int user_id) {
		Query query = sessionFactory.openSession().createQuery("from OrderInformation o where o.employer_id = :employer_id");
		query.setParameter("employer_id", user_id);
		List<OrderInformation> list = query.list();
		if (list.size() > 0)
			return list;
		else
			return null;
	}

	
}
