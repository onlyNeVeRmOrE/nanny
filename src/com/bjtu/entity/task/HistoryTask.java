package com.bjtu.entity.task;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 历史任务
 * */
@Entity
@Table(name="historytask")
public class HistoryTask {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column
	private String time;
	
	//总评分
	@Column
	private int comment;
	
	@Column
	private int nanny_id;
	
	@Column
	private int employer_id;
	
	@Column
	private int singleTask_id;

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

	public int getComment() {
		return comment;
	}

	public void setComment(int comment) {
		this.comment = comment;
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

	public int getSingleTask_id() {
		return singleTask_id;
	}

	public void setSingleTask_id(int singleTask_id) {
		this.singleTask_id = singleTask_id;
	}
}
