package com.bjtu.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjtu.service.SearchService;

import net.sf.json.JSONObject;

/**
 * ËÑË÷¿ØÖÆÆ÷
 */
@Controller
public class SearchController {

	@Autowired
	private SearchService searchService;

	@RequestMapping(value = "/nannySearch",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String searchNanny(HttpServletRequest request)
			throws UnsupportedEncodingException {
		String parameter = request.getParameter("parameter");
		JSONObject parseParamter = JSONObject.fromObject(parameter);
		String result = searchService.searchNanny(parseParamter);
		System.out.println(result);
		return result;
	}

}
