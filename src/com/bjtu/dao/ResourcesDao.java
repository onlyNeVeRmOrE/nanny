package com.bjtu.dao;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * 资源相关接口
 * */
public interface ResourcesDao {
	
	public HashMap<Integer,String> getImageUrl(int count);
	
	public void savePicUrl(int user_id,String pic_url);
}
