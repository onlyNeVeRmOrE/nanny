package com.bjtu.test;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import com.bjtu.entity.NannyUser;

public class HibernateTest {

	public static void main(String[] args) {
		// 初始化一个POJO对象
		NannyUser user = new NannyUser();
		user.setUsername("123456@qq.com");
		user.setPassword("password");
		user.setGender(1);
		user.setName("vp");

		// 读取hibernate.cfg.xml配置，并初始化配置
		Configuration cfg = new Configuration();
		cfg.configure();

		// 根据配置获取sessionFactory,然后开启事务
		SessionFactory sessionFactory = cfg.buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		// 使用HQL语句查询
		// Query query = session.createQuery("from NannyUser");
		// List<NannyUser> userList = query.getResultList();
		// System.out.println(userList.size());

//		Query query = sessionFactory.openSession().createQuery("from NannyUser u where u.username = :username")
//				.setParameter("username", "123456@qq.com");
//		System.out.println(query.list().size());

		// 存入user对象至nannyuser表中
		 session.save(user);

		// 提交事务，关闭会话
		tx.commit();
		session.close();
	}
}
