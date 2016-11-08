package com.ping.domain;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="roll")
public class Roll {

	private Integer rollId;
	private String rollIdCard;
	private String rollRegistTrationNumber;
	private String  rollStartdate;
	private String rollEnddate;
	private String rollUnit;
	private String rollProfession;
	private String rollNation;
	private String rollPoliticalstatus;  
	private String rollAddress;
	private String rollClass;
	private String rollMarriage;
	private Student student;
	
	
	public String getRollMarriage() {
		return rollMarriage;
	}
	public void setRollMarriage(String rollMarriage) {
		this.rollMarriage = rollMarriage;
	}
	public String getRollRegistTrationNumber() {
		return rollRegistTrationNumber;
	}
	public void setRollRegistTrationNumber(String rollRegistTrationNumber) {
		this.rollRegistTrationNumber = rollRegistTrationNumber;
	}
	public String getRollStartdate() {
		return rollStartdate;
	}
	public void setRollStartdate(String rollStartdate) {
		this.rollStartdate = rollStartdate;
	}
	public String getRollEnddate() {
		return rollEnddate;
	}
	public void setRollEnddate(String rollEnddate) {
		this.rollEnddate = rollEnddate;
	}
	@OneToOne
	@JoinColumn(name="stuId")
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getRollId() {
		return rollId;
	}
	public void setRollId(Integer rollId) {
		this.rollId = rollId;
	}
	public String getRollIdCard() {
		return rollIdCard;
	}
	public void setRollIdCard(String rollIdCard) {
		this.rollIdCard = rollIdCard;
	}
	
	public String getRollUnit() {
		return rollUnit;
	}
	public void setRollUnit(String rollUnit) {
		this.rollUnit = rollUnit;
	}
	public String getRollProfession() {
		return rollProfession;
	}
	public void setRollProfession(String rollProfession) {
		this.rollProfession = rollProfession;
	}
	public String getRollNation() {
		return rollNation;
	}
	public void setRollNation(String rollNation) {
		this.rollNation = rollNation;
	}
	public String getRollPoliticalstatus() {
		return rollPoliticalstatus;
	}
	public void setRollPoliticalstatus(String rollPoliticalstatus) {
		this.rollPoliticalstatus = rollPoliticalstatus;
	}
	public String getRollAddress() {
		return rollAddress;
	}
	public void setRollAddress(String rollAddress) {
		this.rollAddress = rollAddress;
	}
	public String getRollClass() {
		return rollClass;
	}
	public void setRollClass(String rollClass) {
		this.rollClass = rollClass;
	}
	
	
	
	
}
