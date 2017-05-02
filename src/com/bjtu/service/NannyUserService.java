package com.bjtu.service;

import java.util.List;

import com.bjtu.entity.NannyUser;

public interface NannyUserService {
	public List<NannyUser> getAllUser();
    public boolean isExists(String username);
    public boolean checkLogin(String username,String password);
    
    //зЂВс
    public void register(String username,String password);
}
