package com.bjtu.daoImpl;

import java.util.HashMap;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import com.bjtu.dao.ResourcesDao;
import com.bjtu.entity.UserBaseInfo;

@Repository
public class ResourcesDaoImpl extends HibernateDaoSupport implements ResourcesDao {

	/***** ע�� *****/
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	/***** beanʵ����ʱִ�и÷��� *******/
	@Autowired
	public void setSessionFactory() {
		super.setSessionFactory(sessionFactory);
	}

	public ResourcesDaoImpl() {
	}

	/**
	 * �����¼
	 * @param theCount �ڼ��η�������
	 * */
	@Override
	public HashMap<Integer, String> getImageUrl(int theCount) {
		HashMap<Integer, String> result = new HashMap<Integer, String>();
		Session session = sessionFactory.openSession();
		// 1.��ȡ�������м�¼�������������¼�¼��
		String hql = "select count(*) from UserBaseInfo u";
		String get = "";
		long count = (long)session.createQuery(hql).uniqueResult();
		int last = (theCount-1)*8;
		int rest = (int) (count - last);
		get = "select u from UserBaseInfo u";
		Query query = session.createQuery(get);
		query.setFirstResult(last);
		// 2.���ϴλ�ȡλ�ÿ�ʼ�������ʣ������¼����ȡ���������ʣ�಻�㣬��ȡʣ��
		if(rest>=8){
			query.setMaxResults(8);
		}else if(rest>0&&rest<8){
			query.setMaxResults(rest);
		}else{
			return null;
		}
		List<UserBaseInfo> list = query.list();
		for(UserBaseInfo user:list){
			result.put(user.getUser_id(), user.getPic_url());
		}
		return result.size()>0?result:null;
	}

	/**
	 * �����ϴ�ͼƬ��URL
	 * */
	@Override
	public void savePicUrl(int user_id,String pic_url) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("update UserBaseInfo u set u.pic_url = :pic_url  where user_id = :user_id");
		query.setParameter("pic_url", pic_url);
		query.setParameter("user_id", user_id);
		query.executeUpdate(); 
		tx.commit();
		session.close();
	}

}
