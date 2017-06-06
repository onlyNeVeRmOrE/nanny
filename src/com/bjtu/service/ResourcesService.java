package com.bjtu.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ResourcesService {
	
	//请求图片的URL地址
	public HashMap<Integer,String> getImageUrl(int count);
	
	//上传图片存入URL地址
	public void savePicUrl(int user_id,String pic_url);
	
	//上传文件
	public String uploadFile(); 
}
