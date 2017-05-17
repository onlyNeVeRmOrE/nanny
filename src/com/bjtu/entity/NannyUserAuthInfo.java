package com.bjtu.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 月嫂用户信息认证
 */
@Entity
@Table(name = "NannyUserAuthInfo")
public class NannyUserAuthInfo {

	@Id
	private int user_id;

	@Column
	private String target_city;

	@Column
	private String is_home;

	@Column
	private String experience;

	@Column
	private String education;

	@Column
	private int salary;

	@Column
	private int vacation;

	@Column
	private String nation;

	@Column
	private String faith;

	@Column
	private String marry_status;

	@Column
	private String child_is_local;

	@Column
	private String parent_is_local;

	@Lob
	private String introduction;

	@Lob
	private String remark;

	@OneToMany(mappedBy = "nannyUserAuthInfo", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<SkillLabel> labels = new HashSet<SkillLabel>();

	public Set<SkillLabel> getLabels() {
		return labels;
	}

	public void setLabels(Set<SkillLabel> labels) {
		this.labels = labels;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getTarget_city() {
		return target_city;
	}

	public void setTarget_city(String target_city) {
		this.target_city = target_city;
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

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getVacation() {
		return vacation;
	}

	public void setVacation(int vacation) {
		this.vacation = vacation;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getFaith() {
		return faith;
	}

	public void setFaith(String faith) {
		this.faith = faith;
	}

	public String getMarry_status() {
		return marry_status;
	}

	public void setMarry_status(String marry_status) {
		this.marry_status = marry_status;
	}

	public String getChild_is_local() {
		return child_is_local;
	}

	public void setChild_is_local(String child_is_local) {
		this.child_is_local = child_is_local;
	}

	public String getParent_is_local() {
		return parent_is_local;
	}

	public void setParent_is_local(String parent_is_local) {
		this.parent_is_local = parent_is_local;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
