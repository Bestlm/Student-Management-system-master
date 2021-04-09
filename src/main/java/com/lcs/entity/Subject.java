package com.lcs.entity;

import com.lcs.utils.Entity;

/**
 * @author 刘成舜
 */
public class Subject extends Entity {

	/**
	 * 
	 */
	private String college;
	/**
	 * 
	 */
	private Integer id;
	/**
	 * 
	 */
	private String remark;
	/**
	 * 
	 */
	private String subjectName;

	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
}