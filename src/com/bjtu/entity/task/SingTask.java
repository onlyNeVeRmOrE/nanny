package com.bjtu.entity.task;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 单个任务
 * */
@Entity
@Table(name="singletask")
public class SingTask {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column
	private String time;
	
	@Column
	private String taskDetails;
	
	//单个评分
	@Column
	private int comment;
	
	@Column
	private int nanny_id;
	
	@Column
	private int employer_id;

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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getTaskDetails() {
		return taskDetails;
	}

	public void setTaskDetails(String taskDetails) {
		this.taskDetails = taskDetails;
	}

	public int getComment() {
		return comment;
	}

	public void setComment(int comment) {
		this.comment = comment;
	}
}
