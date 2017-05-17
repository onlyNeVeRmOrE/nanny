package com.bjtu.daoImpl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.bjtu.dao.SearchDao;
import com.bjtu.entity.NannyUserAuthInfo;

import net.sf.json.JSONObject;

@Repository
public class SearchDaoImpl implements SearchDao{

	/*****注入*****/
	 @Autowired 
	 @Qualifier("sessionFactory") 
	 private SessionFactory sessionFactory;
	
	@Override
	public ArrayList<Integer> searchNanny(Map<String,String> map) {
		ArrayList<Integer> result = new ArrayList<Integer>();
		Session session = sessionFactory.openSession();
	    DetachedCriteria dc = DetachedCriteria.forClass(NannyUserAuthInfo.class);
	    //遍历HashMap 添加参数
	    Iterator iter = map.entrySet().iterator();
	    while(iter.hasNext()){
	    	Map.Entry entry = (Map.Entry) iter.next();
	    	String key = (String)entry.getKey();
	    	String val = (String)entry.getValue();
	    	if(!key.equals("salary")){
	    		dc.add(Restrictions.eq(key,val));
	    	}else if(key.equals("salary")){
	    		if(val.contains("-")){
	    			String[] temp = val.split("-");
	    			int lowSalary = Integer.parseInt(temp[0]);
	    			int highSalary = Integer.parseInt(temp[1]);
	    			dc.add(Restrictions.ge(key, lowSalary));
	    			dc.add(Restrictions.le(key, highSalary));
	    		}else if(val.contains("8000")){		//低于8000
	    			dc.add(Restrictions.lt(key,8000));
	    		}else{								//高于15000
	    			dc.add(Restrictions.gt(key, 15000));
	    		}
	    	}
	    };
	    Criteria c = dc.getExecutableCriteria(session);
	    List<NannyUserAuthInfo> list = c.list();
	    for(int i=0;i<list.size();i++){
	    	result.add(list.get(i).getUser_id());
	    }
	    return result;
	}

}
