package com.bjtu.entity;

/**
 * ��������ʵ��
 * */
public class SearchEntity {
	
	//	 ��һ����---����
	private String address;
	
	//	�ڶ�����---�Ƿ�ס�ң��������飬����
	private String is_home;
	
	private String experience;
	
	private String wage;
	
	//	��������---ѧ�������ܱ�ǩ
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
