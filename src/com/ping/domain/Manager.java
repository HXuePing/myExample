package com.ping.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="manager")
public class Manager {
			
	private Integer managerId;		
	private String managerNumber;	
	private String managerPassword;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getManagerId() {
		return managerId;
	}
	public void setManagerId(Integer managerId) {
		this.managerId = managerId;
	}
	
	@Column
	public String getManagerNumber() {
		return managerNumber;
	}
	public void setManagerNumber(String managerNumber) {
		this.managerNumber = managerNumber;
	}
	@Column
	public String getManagerPassword() {
		return managerPassword;
	}
	public void setManagerPassword(String managerPassword) {
		this.managerPassword = managerPassword;
	}
	
}
