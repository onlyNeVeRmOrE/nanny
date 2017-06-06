package com.bjtu.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.bjtu.dao.UserDao;
import com.bjtu.dao.UserInfoDao;
import com.bjtu.entity.EmployerUserAuthInfo;
import com.bjtu.entity.NannyUser;
import com.bjtu.entity.NannyUserAuthInfo;
import com.bjtu.entity.OrderInformation;
import com.bjtu.entity.UserBaseInfo;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

/**
 * 获取实体JSON实现类
 * */
@Repository
public class UserInfoDaoImpl extends HibernateDaoSupport implements UserInfoDao{
	
	/***** 注入 *****/
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	/***** bean实例化时执行该方法 *******/
	@Autowired
	public void setSessionFactory() {
		super.setSessionFactory(sessionFactory);
	}
	
	@Autowired
	private UserDao userDao;
	
	public UserInfoDaoImpl(){}

	@Override
	public String getUserBaseInfo(int user_id) {
		UserBaseInfo userBaseInfo = userDao.getUserBaseInfo(user_id);
		JSONObject jsonObj = JSONObject.fromObject(userBaseInfo);
		return jsonObj.toString();
	}

	@Override
	public String getNannyUserAuthInfo(int user_id) {
		NannyUserAuthInfo nannyUserAuthInfo = userDao.getNannyInfoById(user_id);
		JsonConfig config = new JsonConfig();
		config.setExcludes(new String[] { "labels" });
		String jsonObj = JSONArray.fromObject(nannyUserAuthInfo, config).toString();
		return jsonObj;
	}

	@Override
	public String getEmployerUserAuthInfo(int user_id) {
		EmployerUserAuthInfo employer = userDao.getEmployerInfoById(user_id);
		JsonConfig config = new JsonConfig();
		config.setExcludes(new String[] { "labels" });
		String jsonObj = JSONArray.fromObject(employer, config).toString();
		return jsonObj;
	}

	/**
	 * 生成订单，雇主json
	 * */
	@Override
	public String getOrderInfo(int user_id) {
		ArrayList<StringBuilder> array = new ArrayList<StringBuilder>();
		List<OrderInformation> order = userDao.getOrderInfo(user_id);
		if(order!=null){
			for(int i=0;i<order.size();i++){
				OrderInformation temp = order.get(i);
				int employer_id = temp.getEmployer_id();
				UserBaseInfo employer = userDao.getUserBaseInfo(employer_id);
				EmployerUserAuthInfo auth = userDao.getEmployerInfoById(employer_id);
				StringBuilder sb = new StringBuilder("[");
				String tempJson = JSONObject.fromObject(temp).toString();
				String employerJson = JSONObject.fromObject(employer).toString();
				String authJson = JSONObject.fromObject(auth).toString();
				sb.append(tempJson+","+employerJson+","+authJson+"]");
				array.add(sb);
			}
		}
		StringBuilder result = new StringBuilder("[");
		for(int j=0;j<array.size();j++){
			result.append(array.get(j));
			if(j+1!=array.size())
				result.append(",");
		}
		result.append("]");
		return result.toString();
	}
	
	@Override
	public String getEmployerInfo(int nanny_id) {
		ArrayList<StringBuilder> array = new ArrayList<StringBuilder>();
		List<OrderInformation> order = userDao.getEmployerOrder(nanny_id);
		if(order!=null){
			for(int i=0;i<order.size();i++){
				OrderInformation temp = order.get(i);
				int nanny = temp.getNanny_id();
				UserBaseInfo nannyInfo = userDao.getUserBaseInfo(nanny);
				NannyUserAuthInfo auth = userDao.getNannyInfoById(nanny);
				JsonConfig config = new JsonConfig();
				config.setExcludes(new String[] { "labels" });	
				StringBuilder sb = new StringBuilder("[");
				String tempJson = JSONObject.fromObject(temp).toString();
				String nannyJson = JSONObject.fromObject(nannyInfo).toString();
				String authJson = JSONObject.fromObject(auth,config).toString();
				sb.append(tempJson+","+nannyJson+","+authJson+"]");
				array.add(sb);
			}
		}
		StringBuilder result = new StringBuilder("[");
		for(int j=0;j<array.size();j++){
			result.append(array.get(j));
			if(j+1!=array.size())
				result.append(",");
		}
		result.append("]");
		return result.toString();
	}

	@Override
	public String getIdentityJson(int user_id) {
		NannyUser nannyUser = userDao.getNannyUser(user_id);
		String identity = nannyUser.getIdentity();
		String json = "[{\"identity\":\""+identity+"\"}]";
		return json;
	}

}
