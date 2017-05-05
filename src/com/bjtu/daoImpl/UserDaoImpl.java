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
import com.bjtu.entity.NannyUser;
import com.bjtu.entity.UserBaseInfo;


@Repository
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	
	 /*****注入*****/
	 @Autowired 
	 @Qualifier("sessionFactory") 
	 private SessionFactory sessionFactory;
	 
	 /*****bean实例化时执行该方法*******/
	 @Autowired 
	 public void setSessionFactory(){
	  super.setSessionFactory(sessionFactory);
	 }
	 
	 public UserDaoImpl(){}
	
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
		Query query = sessionFactory.openSession()
                .createQuery("from NannyUser u where u.username = :username").setParameter("username", username);
        System.out.println(query.list().size());
        return query.list().size()>0?true:false;
	}

	@Override
	public boolean checkLogin(String username, String password) {
		Query query = sessionFactory.openSession()
                .createQuery("from NannyUser u where u.username = :username and u.password= :password");
		query.setParameter("username", username);
		query.setParameter("password", password);
		return query.list().size()>0?true:false;
	}

	@Override
	public void register(String username, String password) {
		NannyUser user = new NannyUser();
		user.setUsername(username);
		user.setPassword(password);
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(user);
		tx.commit();
		session.close();
	}

	//添加用户基本信息
	@Override
	public void addUserBaseInfo(UserBaseInfo userBaseInfo) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(userBaseInfo);
		tx.commit();
		session.close();
	}

	//获取id
	@Override
	public int getIdByUsername(String username) {
		int id = 0;
		Query query = sessionFactory.openSession()
                .createQuery("from NannyUser u where u.username = :username");
		query.setParameter("username", username);
		List<NannyUser> list = query.list();
		if(list.size()>0)
			id = list.get(0).getId();
		return id;
	}

}
