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
		// ��ȡhibernate.cfg.xml���ã�����ʼ������
		Configuration cfg = new Configuration();
		cfg.configure();

		// �������û�ȡsessionFactory,Ȼ��������
		SessionFactory sessionFactory = cfg.buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		String hql = "select count(*) from UserBaseInfo u";
		int count = (int)session.createQuery(hql).uniqueResult();
		System.out.println(count);

		// �ύ���񣬹رջỰ
		tx.commit();
		session.close();
	}
}
