package com.ping.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ping.dao.IIformationDao;
import com.ping.dao.IManagerDao;
import com.ping.dao.IRollDao;
import com.ping.dao.IStudentDao;
import com.ping.dao.ISuggestionDao;
import com.ping.dao.IViolationDao;
import com.ping.domain.Information;
import com.ping.domain.Manager;
import com.ping.domain.PageBean;
import com.ping.domain.QueryInfo;
import com.ping.domain.QueryResult;
import com.ping.domain.Roll;
import com.ping.domain.Student;
import com.ping.domain.Suggestion;
import com.ping.domain.Violation;


@Service
public class ManagerService implements IManagerService {
	
	@Resource
	IManagerDao imdao;
	
	@Resource
	IStudentDao isdao;
	
	@Resource
	IRollDao irdao;
	
	@Resource
	IIformationDao iidao;
	
	@Resource
	IViolationDao ivdao;
	
	@Resource
	ISuggestionDao isgdao;
	
	/*管理员*/
	public Manager getManager(String number,String password){
		return imdao.findManager(number, password);	
	}
	public void updateManager(Integer managerId,String pwd){
		imdao.UpdateManager(managerId, pwd);
	}
	
	/*学生基本信息*/
	public void addstudent(Student s){
		isdao.addStudent(s);
	}
	public Student getstudent(Integer stuId){
		return isdao.getStudent(stuId);
	}
	
	public List<Student> getallstudent(){
		return isdao.getAllStudent();
		
	}
	public Student getstudentbunumber(String number){
		return isdao.getStudentbyNumber(number);
		
	}
	
	public PageBean getpagestudent(QueryInfo info){
		QueryResult result=isdao.getPageStudent(info.getStartindex(), info.getPagesize());
		PageBean pb=new PageBean();
		pb.setList(result.getList());
		pb.setCurrentpage(info.getCurrentpage());
		pb.setPagesize(info.getPagesize());
		pb.setTotalrecord(result.getTotalrecord());
		return pb;	
	}
	
	public Student findstudent(String stuNumber,String stuPassword){
		Student s=isdao.findStudent(stuNumber, stuPassword);		
		return s;	
	}
	
	/*学籍信息*/
	public void addroll(Roll r){
		irdao.addRoll(r);
	}
	public List<Roll> getallroll(){
		return irdao.getAllRoll();		
	}
	public Roll getroll(Integer stuId){
		Roll roll=irdao.getRoll(stuId);
		return roll;
	}
	public PageBean getpageroll(QueryInfo info){
			QueryResult result=irdao.getpageroll(info.getStartindex(), info.getPagesize());
			PageBean pb=new PageBean();
			pb.setList(result.getList());
			pb.setPagesize(info.getPagesize());
			pb.setTotalrecord(result.getTotalrecord());
			pb.setCurrentpage(info.getCurrentpage());
			return pb;
	}
	
	
	/*联系方式*/
	public void addinformation(Information information){
		iidao.addInformation(information);
	}
	public List<Information> getallinformation(){
		return iidao.getAllInformation();		
	}
	public Information getInformation(Integer stuId){
		return iidao.getInformation(stuId);
	}
	public PageBean getpageinformation(QueryInfo info){
		PageBean pb=new PageBean();
		
		QueryResult qr=iidao.getpageInformation(info.getStartindex(), info.getPagesize());
		pb.setList(qr.getList());
		pb.setTotalrecord(qr.getTotalrecord());
		
		pb.setPagesize(info.getPagesize());
		pb.setCurrentpage(info.getCurrentpage());
		return pb;
	}
	/*修改学生密码*/
	public void updatePassword(Integer stuId,String pwd){
		isdao.updateStu(stuId, pwd);
	}
	
	/*违规信息*/
	public void saveviolation(Violation v){
		ivdao.saveViolation(v);
	}
	public List<Violation> getviolation(String name){
		return ivdao.getViolation(name);
	}
	
	public Violation getvioaltionbyid(Integer violationId){
		return ivdao.getViolationbyId(violationId);
	}
	
	public List<Violation> getallviolation(){
		return ivdao.getAllViolation();
	}
	public PageBean getPageViolation(QueryInfo info){
		PageBean pb=new PageBean();
		
		QueryResult qr=ivdao.getpageviolation(info.getStartindex(), info.getPagesize());
		pb.setList(qr.getList());
		pb.setTotalrecord(qr.getTotalrecord());
		
		pb.setPagesize(info.getPagesize());
		pb.setCurrentpage(info.getCurrentpage());
		return pb;
		
	}
	
	public void editViolation(Violation v){
		ivdao.editViolation(v);
	}
	
	/*投诉建议*/
	public void savesuggestion(Suggestion s){
		isgdao.saveSuggestion(s);
	}
	public List<Suggestion> getsuggestion(Integer id){
		return isgdao.getSuggestion(id);
	}
	public List<Suggestion> getallsuggestion(){
		return isgdao.getAllSuggestion();
	}
	
	
	public PageBean getpagesuggestion(QueryInfo info){
		PageBean pb=new PageBean();
		
		QueryResult qr=isgdao.getPageSuggestion(info.getStartindex(),info.getPagesize());
		
		pb.setList(qr.getList());
		pb.setTotalrecord(qr.getTotalrecord());
		pb.setCurrentpage(info.getCurrentpage());
		pb.setPagesize(info.getPagesize());
		return pb;
	}
	
	//根据姓名查找学生基本信息
	public List<Student> selectbyName(String name){
		return isdao.selectbyName(name);
	}
	
	//根据学号查找学籍
	public Roll rollselectbyStuNumber(String stuNumber){
		return irdao.rollselectbystunumber(stuNumber);		
	}
	//根据学号查找联系方式
	public Information inforselectbystuNumber(String stuNumber){
		return iidao.inforselectbystunumber(stuNumber);
	}
	//删除
	public void deletevio(){
		ivdao.deletevio();
	}
	
}
