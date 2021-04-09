package com.lcs.entity;

import com.lcs.utils.Entity;

/**
 * @author 刘成舜
 */
public class Course extends Entity {

	/**
	 * 
	 */
	private String courseName;
	/**
	 * 
	 */
	private Integer id;
	/**
	 * 
	 */
	private String remark;

	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
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
}