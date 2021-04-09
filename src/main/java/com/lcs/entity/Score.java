package com.lcs.entity;

import com.lcs.utils.Entity;

/**
 * @author 刘成舜
 */
public class Score extends Entity {

	/**
	 * 
	 */
	private Integer courseId;
	/**
	 * 
	 */
	private Integer id;
	/**
	 * 
	 */
	private String score;
	/**
	 * 
	 */
	private Integer sectionId;
	/**
	 * 
	 */
	private Integer stuId;

	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public Integer getSectionId() {
		return sectionId;
	}
	public void setSectionId(Integer sectionId) {
		this.sectionId = sectionId;
	}
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
}