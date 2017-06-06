package com.bjtu.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjtu.dao.SearchDao;
import com.bjtu.dao.UserDao;
import com.bjtu.entity.NannyUser;
import com.bjtu.entity.NannyUserAuthInfo;
import com.bjtu.entity.UserBaseInfo;
import com.bjtu.service.SearchService;

import net.sf.json.JSONObject;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	private SearchDao searchDao;
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public String searchNanny(JSONObject jsonObj) {
		Map<String,String> map = new HashMap<String,String>();
		String city = jsonObj.getString("city");
		if(city != null && city.length() != 0 && !city.equals("请选择城市")) { 
			map.put("target_city", city);
		}
		String isHome = jsonObj.getString("isHome");
		if(isHome != null && isHome.length() != 0 ) { 
			map.put("is_home", isHome);
		}
		String education = jsonObj.getString("education");
		if(education != null && education.length() != 0 ) { 
			map.put("education", education);
		}
		String experience = jsonObj.getString("time");
		if(experience != null && experience.length() != 0 ) { 
			map.put("experience", experience);
		}
		String salary = jsonObj.getString("salary");
		if(salary != null && salary.length() != 0 ) { 
			map.put("salary", salary);
		}
		ArrayList<Integer> list  = searchDao.searchNanny(map);
		return generateSearchJson(list);
	}
	
	//生成高级检索的json
	public String generateSearchJson(ArrayList<Integer> list){
		ArrayList<String> temp = new ArrayList<String>(); 
		StringBuilder sb = new StringBuilder("[");
		
		for(int i=0;i<list.size();i++){
			StringBuilder info = new StringBuilder("{");
			NannyUserAuthInfo nanny = userDao.getNannyInfoById(list.get(i));
			UserBaseInfo user = userDao.getUserBaseInfo(list.get(i));
			info.append("\"target_city\":"+"\""+nanny.getTarget_city()+"\",");
			info.append("\"user_id\":"+"\""+nanny.getUser_id()+"\",");
			info.append("\"is_home\":"+"\""+nanny.getIs_home()+"\",");
			info.append("\"salary\":"+"\""+nanny.getSalary()+"\",");
			info.append("\"experience\":"+"\""+nanny.getExperience()+"\",");
			info.append("\"name\":"+"\""+user.getName()+"\",");
			String introduceAll = nanny.getIntroduction();
			String introduce = "";
			if(introduceAll.length()>32)
				introduce = introduceAll.substring(0, 31);
			else introduce = introduceAll;
			info.append("\"introduce\":"+"\""+introduce+"\",");
			info.append("\"pic_url\":"+"\""+user.getPic_url()+"\"");
			info.append("}");
			temp.add(info.toString());
		}
		
		for(int j=0;j<temp.size();j++){
			sb.append(temp.get(j));
			if(j+1!=temp.size())
				sb.append(",");
		}
		sb.append("]");
		return sb.toString();
	}

}
