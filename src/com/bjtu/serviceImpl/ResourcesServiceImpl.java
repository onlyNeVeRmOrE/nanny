package com.bjtu.serviceImpl;


import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.bjtu.dao.ResourcesDao;
import com.bjtu.service.ResourcesService;

@Service
public class ResourcesServiceImpl implements ResourcesService{
	@Autowired
    private ResourcesDao resourcesDao;

	public ResourcesDao getResourcesDao() {
		return resourcesDao;
	}

	public void setResourcesDao(ResourcesDao resourcesDao) {
		this.resourcesDao = resourcesDao;
	}

	@Override
	public HashMap<Integer, String> getImageUrl(int count) {
		return resourcesDao.getImageUrl(count);
	}

	//存入上传图片的URL
	@Transactional 
	@Override
	public void savePicUrl(int user_id,String pic_url) {
		resourcesDao.savePicUrl(user_id, pic_url);
	}

	//上传文件
	@Override
	public String uploadFile() {
		return null;
	}

}
