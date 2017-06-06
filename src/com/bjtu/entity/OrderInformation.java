package com.bjtu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 订单信息实体
 * */
@Entity
@Table(name="orderinformation")
public class OrderInformation {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	//预约最晚答复时间
	@Column(name="the_last_time")
	private String theLastTime;
	
	//工作开始日期
	@Column(name="start_time")
	private String startTime;
	
	//工作结束日期
	@Column(name="end_time")
	private String endTime;
	
	//最低工资
	@Column(name="low_salary")
	private String lowSalary;
	
	//最高工资
	@Column(name="high_salary")
	private String highSalary;
	
	//工作地点
	@Column(name="address")
	private String address;
	
	//月嫂ID
	@Column(name="nanny_id")
	private int nanny_id;
	
	//雇主ID
	@Column(name="employer_id")
	private int employer_id;
	
	//订单状态
	@Column(name="order_status")
	private String status;
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getNanny_id() {
		return nanny_id;
	}

	public void setNanny_id(int nanny_id) {
		this.nanny_id = nanny_id;
	}

	public int getEmployer_id() {
		return employer_id;
	}

	public void setEmployer_id(int employer_id) {
		this.employer_id = employer_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTheLastTime() {
		return theLastTime;
	}

	public void setTheLastTime(String theLastTime) {
		this.theLastTime = theLastTime;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getLowSalary() {
		return lowSalary;
	}

	public void setLowSalary(String lowSalary) {
		this.lowSalary = lowSalary;
	}

	public String getHighSalary() {
		return highSalary;
	}

	public void setHighSalary(String highSalary) {
		this.highSalary = highSalary;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
}
