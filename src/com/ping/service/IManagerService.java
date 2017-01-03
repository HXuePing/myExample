package com.ping.service;

import java.util.List;

import com.ping.domain.Information;
import com.ping.domain.Manager;
import com.ping.domain.PageBean;
import com.ping.domain.QueryInfo;
import com.ping.domain.Roll;
import com.ping.domain.Student;
import com.ping.domain.Suggestion;
import com.ping.domain.Violation;

public interface IManagerService {

	Manager getManager(String number, String password);
	public void updateManager(Integer managerId,String pwd);

	/*学生基本信息*/
	void addstudent(Student s);
	public Student getstudent(Integer stuId);
	public List<Student> getallstudent();
	public PageBean getpagestudent(QueryInfo info);
	public Student findstudent(String stuNumber,String stuPassword);
	public void updatePassword(Integer stuId,String pwd);
	public Student getstudentbunumber(String number);
	/*学籍信息*/
	void addroll(Roll r);
	public List<Roll> getallroll();
	public Roll getroll(Integer stuId);
	public PageBean getpageroll(QueryInfo info);
	/*联系方式*/
	void addinformation(Information information);
	public List<Information> getallinformation();
	public Information getInformation(Integer stuId);
	public PageBean getpageinformation(QueryInfo info);
	/*违规信息*/
	public void saveviolation(Violation v);
	public List<Violation> getviolation(String name);
	public List<Violation> getallviolation();
	public PageBean getPageViolation(QueryInfo info);
	public void editViolation(Violation v);
	public Violation getvioaltionbyid(Integer violationId);
	
	/*投诉建议*/
	public void savesuggestion(Suggestion s);
	public List<Suggestion> getsuggestion(Integer id);
	public List<Suggestion> getallsuggestion();
	public PageBean getpagesuggestion(QueryInfo info);
	
	//根据名字查找
	public List<Student> selectbyName(String name);
	public Roll rollselectbyStuNumber(String stuNumber);
	public Information inforselectbystuNumber(String stuNumber);
	
	
	public void deletevio();
}