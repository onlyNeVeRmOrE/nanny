package com.bjtu.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="employerlabel")
public class EmployerLabel {
	
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "LABEL_NAME")
	private String name;
	
	@Lob
	@Column(name="DESCRIBETION")
	private String describetion;

	@ManyToOne(cascade = CascadeType.REMOVE, optional = false)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id") 
	private EmployerUserAuthInfo employerUserAuthInfo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescribetion() {
		return describetion;
	}

	public void setDescribetion(String describetion) {
		this.describetion = describetion;
	}

	public EmployerUserAuthInfo getEmployerUserAuthInfo() {
		return employerUserAuthInfo;
	}

	public void setEmployerUserAuthInfo(EmployerUserAuthInfo employerUserAuthInfo) {
		this.employerUserAuthInfo = employerUserAuthInfo;
	}
	
	

}
