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

	/***** 注入 *****/
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	/***** bean实例化时执行该方法 *******/
	@Autowired
	public void setSessionFactory() {
		super.setSessionFactory(sessionFactory);
	}

	public ResourcesDaoImpl() {
	}

	/**
	 * 请求记录
	 * @param theCount 第几次发送请求
	 * */
	@Override
	public HashMap<Integer, String> getImageUrl(int theCount) {
		HashMap<Integer, String> result = new HashMap<Integer, String>();
		Session session = sessionFactory.openSession();
		// 1.获取表中所有记录总数并计算余下记录数
		String hql = "select count(*) from UserBaseInfo u";
		String get = "";
		long count = (long)session.createQuery(hql).uniqueResult();
		int last = (theCount-1)*8;
		int rest = (int) (count - last);
		get = "select u from UserBaseInfo u";
		Query query = session.createQuery(get);
		query.setFirstResult(last);
		// 2.从上次获取位置开始，如果还剩八条记录，则取八条，如果剩余不足，则取剩余
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
	 * 存入上传图片的URL
	 * */
	@Override
	public void savePicUrl(int user_id,String pic_url) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.getTransaction();
		Query query = session.createQuery("update UserBaseInfo u set u.pic_url =./imgResources/"+pic_url+" where user_id="+user_id);
		query.executeUpdate(); 
		tx.commit();
		session.close();
	}

}
