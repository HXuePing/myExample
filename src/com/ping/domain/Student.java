package com.ping.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {
		
	private Integer stuId;			
	private String stuNumber;	
	private String stuName;
	private String stuPassword;
	private String stuSex;
	private String stuFloor;	
	private String stuStorey;	
	private String stuTutor;
	private String stuTutorPhone;
			
	private String stuImage;
	
	
	public String getStuImage() {
		return stuImage;
	}
	public void setStuImage(String stuImage) {
		this.stuImage = stuImage;
	}
	public String getStuNumber() {
		return stuNumber;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public void setStuNumber(String stuNumber) {
		this.stuNumber = stuNumber;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}

	@Column
	public String getStuPassword() {
		return stuPassword;
	}
	public void setStuPassword(String stuPassword) {
		this.stuPassword = stuPassword;
	}
	@Column
	public String getStuSex() {
		return stuSex;
	}
	public void setStuSex(String stuSex) {
		this.stuSex = stuSex;
	}
	@Column
	public String getStuFloor() {
		return stuFloor;
	}
	public void setStuFloor(String stuFloor) {
		this.stuFloor = stuFloor;
	}
	
	@Column
	public String getStuStorey() {
		return stuStorey;
	}
	public void setStuStorey(String stuStorey) {
		this.stuStorey = stuStorey;
	}
	@Column
	public String getStuTutor() {
		return stuTutor;
	}
	public void setStuTutor(String stuTutor) {
		this.stuTutor = stuTutor;
	}
	@Column
	public String getStuTutorPhone() {
		return stuTutorPhone;
	}
	public void setStuTutorPhone(String stuTutorPhone) {
		this.stuTutorPhone = stuTutorPhone;
	}
	
}
