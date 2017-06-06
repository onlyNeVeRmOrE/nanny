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

/**
 * 技能标签实体
 * */
@Entity
@Table(name = "LABEL")
public class SkillLabel {

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int label_id;

	@Column(name = "LABEL_NAME")
	private String name;
	
	@Lob
	@Column(name="DESCRIBETION")
	private String describetion;

	@ManyToOne(cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id") 
	private NannyUserAuthInfo nannyUserAuthInfo;

	public int getLabel_id() {
		return label_id;
	}

	public void setLabel_id(int label_id) {
		this.label_id = label_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public NannyUserAuthInfo getNannyUserAuthInfo() {
		return nannyUserAuthInfo;
	}

	public void setNannyUserAuthInfo(NannyUserAuthInfo nannyUserAuthInfo) {
		this.nannyUserAuthInfo = nannyUserAuthInfo;
	}

	public String getDescribetion() {
		return describetion;
	}

	public void setDescribetion(String describetion) {
		this.describetion = describetion;
	}
	
}
