package com.lcs.entity;

import com.lcs.utils.Entity;

/**
 * @author 刘成舜
 */
public class Job extends Entity {

	/**
	 * 
	 */
	private String compName;
	/**
	 * 
	 */
	private Integer id;
	/**
	 * 
	 */
	private String jobDate;
	/**
	 * 
	 */
	private String remark;
	/**
	 * 
	 */
	private Integer salay;
	/**
	 * 
	 */
	private Integer stuId;

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getJobDate() {
		return jobDate;
	}
	public void setJobDate(String jobDate) {
		this.jobDate = jobDate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getSalay() {
		return salay;
	}
	public void setSalay(Integer salay) {
		this.salay = salay;
	}
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
}