package com.ping.dao;


import java.util.List;

import com.ping.domain.QueryResult;
import com.ping.domain.Student;

public interface IStudentDao {

	void addStudent(Student s);
	
	void deleteStudent(Student s);
	public Student getStudent(Integer stuId);
	public List<Student> getAllStudent();
	public QueryResult getPageStudent(Integer startIndex,Integer pagesize);
	public Student findStudent(String stuNumber,String stuPassword);
	public void updateStu(Integer stuId,String pwd);
	public Student getStudentbyNumber(String stuNumber);
	public List<Student> selectbyName(String name);
}