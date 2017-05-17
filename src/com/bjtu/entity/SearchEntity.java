package com.bjtu.entity;

/**
 * 搜索因子实体
 * */
public class SearchEntity {
	
	//	 第一级别---地区
	private String address;
	
	//	第二级别---是否住家，工作经验，工资
	private String is_home;
	
	private String experience;
	
	private String wage;
	
	//	第三级别---学历，技能标签
	private String education;
	
	private String[] target;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIs_home() {
		return is_home;
	}

	public void setIs_home(String is_home) {
		this.is_home = is_home;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getWage() {
		return wage;
	}

	public void setWage(String wage) {
		this.wage = wage;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String[] getTarget() {
		return target;
	}

	public void setTarget(String[] target) {
		this.target = target;
	}
	
}
