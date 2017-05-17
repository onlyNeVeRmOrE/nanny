package com.bjtu.dao;

import java.util.ArrayList;
import java.util.Map;

import net.sf.json.JSONObject;

public interface SearchDao {
	
	//ËÑË÷ÔÂÉ©
	public ArrayList<Integer> searchNanny(Map<String,String> map);

}
