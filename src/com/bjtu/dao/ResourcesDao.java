package com.bjtu.dao;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * ��Դ��ؽӿ�
 * */
public interface ResourcesDao {
	
	public HashMap<Integer,String> getImageUrl(int count);
	
	public void savePicUrl(int user_id,String pic_url);
}
