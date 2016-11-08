package com.ping.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="information")
public class Information {
	private Integer informationId;
	private String informationAddress;
	private String informationCode;
	private String informationEmail;
	private String informationHomephone;	
	private String informationLongphone;
	private String informationQq;
	private String informationShortphone;
	private Student student;
	
	public String getInformationAddress() {
		return informationAddress;
	}
	public String getInformationCode() {
		return informationCode;
	}
	
	public String getInformationEmail() {
		return informationEmail;
	}
	public String getInformationHomephone() {
		return informationHomephone;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getInformationId() {
		return informationId;
	}
	public String getInformationLongphone() {
		return informationLongphone;
	}
	public String getInformationQq() {
		return informationQq;
	}
	public String getInformationShortphone() {
		return informationShortphone;
	}
	@OneToOne
	@JoinColumn(name="stuId")
	public Student getStudent() {
		return student;
	}
	public void setInformationAddress(String informationAddress) {
		this.informationAddress = informationAddress;
	}

	public void setInformationCode(String informationCode) {
		this.informationCode = informationCode;
	}
	public void setInformationEmail(String informationEmail) {
		this.informationEmail = informationEmail;
	}
	public void setInformationHomephone(String informationHomephone) {
		this.informationHomephone = informationHomephone;
	}
	public void setInformationId(Integer informationId) {
		this.informationId = informationId;
	}
	public void setInformationLongphone(String informationLongphone) {
		this.informationLongphone = informationLongphone;
	}
	public void setInformationQq(String informationQq) {
		this.informationQq = informationQq;
	}
	public void setInformationShortphone(String informationShortphone) {
		this.informationShortphone = informationShortphone;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	
}
