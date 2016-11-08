package com.ping.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="violation")
public class Violation {
	private Integer violationId;
	private String violationstuNumber;
	private String violationstuName;	
	 @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date violationHappentime;	
	 @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date violationEnteringtime;
	private String violationDeregulation;
	private String violationType;
	//private Student student;
	
	public String getViolationstuNumber() {
		return violationstuNumber;
	}
	public void setViolationstuNumber(String violationstuNumber) {
		this.violationstuNumber = violationstuNumber;
	}
	public String getViolationstuName() {
		return violationstuName;
	}
	public void setViolationstuName(String violationstuName) {
		this.violationstuName = violationstuName;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getViolationId() {
		return violationId;
	}
	public void setViolationId(Integer violationId) {
		this.violationId = violationId;
	}
	public Date getViolationHappentime() {
		return violationHappentime;
	}
	public void setViolationHappentime(Date violationHappentime) {
		this.violationHappentime = violationHappentime;
	}
	public Date getViolationEnteringtime() {
		return violationEnteringtime;
	}
	public void setViolationEnteringtime(Date violationEnteringtime) {
		this.violationEnteringtime = violationEnteringtime;
	}
	public String getViolationDeregulation() {
		return violationDeregulation;
	}
	public void setViolationDeregulation(String violationDeregulation) {
		this.violationDeregulation = violationDeregulation;
	}
	public String getViolationType() {
		return violationType;
	}
	public void setViolationType(String violationType) {
		this.violationType = violationType;
	}
	
	/*@OneToOne
	@JoinColumn(name="stuId")
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	*/
	
	
}
