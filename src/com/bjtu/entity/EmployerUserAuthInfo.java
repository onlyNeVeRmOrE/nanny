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
 * ������֤��Ϣ
 * */
@Entity
@Table(name="employeruserauthinfo")
public class EmployerUserAuthInfo {
	
	@Id
	private int user_id;
	
	//��Ҫ������ַ
	@Column
	private String work_address;
	
	//�Ƿ�ס��
	@Column
	private String is_home;
	
	//������Ҫ
	@Column
	private String experience_need;
	
	//ѧ��
	@Column
	private String education;
	
	//��֧������
	@Column
	private int can_pay;
	
	//��ɩ����Ϣ����
	@Column
	private int vacation;
	
	//Ӥ����������
	@Column
	private String baby_birth;
	
	//Ӥ����������
	@Column
	private double baby_weight;
	
	//ĸ������
	@Column
	private int mother_age;
	
	//ĸ������
	@Column
	private double mother_weight;
	
	//ĸ����ߣ����ף�
	@Column
	private int mother_height;
	
	//�������
	@Column
	private int childbirth_count;
	
	//���䷽ʽ
	@Column
	private String childbirth_method;
	
	@OneToMany(mappedBy = "employerUserAuthInfo", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<EmployerLabel> labels = new HashSet<EmployerLabel>();
	
	//ĸӤ��������
	
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
