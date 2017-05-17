package com.bjtu.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 雇主认证信息
 * */
@Entity
@Table(name="employeruserauthinfo")
public class EmployerUserAuthInfo {
	
	@Id
	private int user_id;
	
	//需要工作地址
	@Column
	private String work_address;
	
	//是否住家
	@Column
	private String is_home;
	
	//经验需要
	@Column
	private String experience_need;
	
	//学历
	@Column
	private String education;
	
	//可支付工资
	@Column
	private int can_pay;
	
	//月嫂可休息天数
	@Column
	private int vacation;
	
	//婴儿出生日期
	@Column
	private String baby_birth;
	
	//婴儿出生体重
	@Column
	private double baby_weight;
	
	//母亲年龄
	@Column
	private int mother_age;
	
	//母亲体重
	@Column
	private double mother_weight;
	
	//母亲身高（厘米）
	@Column
	private int mother_height;
	
	//分娩次数
	@Column
	private int childbirth_count;
	
	//分娩方式
	@Column
	private String childbirth_method;
	
	@OneToMany(mappedBy = "employerUserAuthInfo", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<EmployerLabel> labels = new HashSet<EmployerLabel>();
	
	//母婴健康报告
	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	public String getWork_address() {
		return work_address;
	}

	public void setWork_address(String work_address) {
		this.work_address = work_address;
	}

	public String getIs_home() {
		return is_home;
	}

	public void setIs_home(String is_home) {
		this.is_home = is_home;
	}

	public String getExperience_need() {
		return experience_need;
	}

	public void setExperience_need(String experience_need) {
		this.experience_need = experience_need;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public int getCan_pay() {
		return can_pay;
	}

	public void setCan_pay(int can_pay) {
		this.can_pay = can_pay;
	}

	public int getVacation() {
		return vacation;
	}

	public void setVacation(int vacation) {
		this.vacation = vacation;
	}

	public String getBaby_birth() {
		return baby_birth;
	}

	public void setBaby_birth(String baby_birth) {
		this.baby_birth = baby_birth;
	}

	public double getBaby_weight() {
		return baby_weight;
	}

	public void setBaby_weight(double d) {
		this.baby_weight = d;
	}

	public int getMother_age() {
		return mother_age;
	}

	public void setMother_age(int mother_age) {
		this.mother_age = mother_age;
	}

	public double getMother_weight() {
		return mother_weight;
	}

	public void setMother_weight(double d) {
		this.mother_weight = d;
	}

	public int getMother_height() {
		return mother_height;
	}

	public void setMother_height(int mother_height) {
		this.mother_height = mother_height;
	}

	public int getChildbirth_count() {
		return childbirth_count;
	}

	public void setChildbirth_count(int childbirth_count) {
		this.childbirth_count = childbirth_count;
	}

	public String getChildbirth_method() {
		return childbirth_method;
	}

	public void setChildbirth_method(String childbirth_method) {
		this.childbirth_method = childbirth_method;
	}
	
	
	
}
