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
		// 读取hibernate.cfg.xml配置，并初始化配置
		Configuration cfg = new Configuration();
		cfg.configure();

		// 根据配置获取sessionFactory,然后开启事务
		SessionFactory sessionFactory = cfg.buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		String hql = "select count(*) from UserBaseInfo u";
		int count = (int)session.createQuery(hql).uniqueResult();
		System.out.println(count);

		// 提交事务，关闭会话
		tx.commit();
		session.close();
	}
}
