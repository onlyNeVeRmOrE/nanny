package com.bjtu.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ResourcesService {
	
	//����ͼƬ��URL��ַ
	public HashMap<Integer,String> getImageUrl(int count);
	
	//�ϴ�ͼƬ����URL��ַ
	public void savePicUrl(int user_id,String pic_url);
	
	//�ϴ��ļ�
	public String uploadFile(); 
}
