package com.bjtu.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.bjtu.entity.NannyUser;
import com.bjtu.service.NannyUserService;

@Controller
public class TestController {

	@Autowired
	private NannyUserService nannyUserService;
	
	public NannyUserService getNannyUserService() {
		return nannyUserService;
	}

	public void setNannyUserService(NannyUserService nannyUserService) {
		this.nannyUserService = nannyUserService;
	}
	
	@RequestMapping(value="/test") 
	public ModelAndView testMVC(){
		System.out.println("testMVC()");
		List<NannyUser> list = nannyUserService.getAllUser();
		System.out.println("list.size():"+list.size());
		ModelAndView modelAndView = new ModelAndView("/test");  
		modelAndView.addObject("info", "hewei");  
		return modelAndView;  
	}
}
