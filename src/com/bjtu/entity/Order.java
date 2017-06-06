package com.bjtu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 订单实体(雇主，月嫂，多对多)
 * */
@Entity
@Table(name="nanny_order")
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="nanny_id")
	private int nanny_id;
	
	@Column(name="employer_id")
	private int employer_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
	
}
