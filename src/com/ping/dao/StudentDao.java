package com.ping.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.ping.domain.QueryResult;
import com.ping.domain.Student;



@Repository
public class StudentDao implements IStudentDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}
	
	public void addStudent(Student s){
		getSession().save(s);
	}
	public void deleteStudent(Student s){
		getSession().delete(s);
	}
	
	public Student getStudent(Integer stuId){
		Student s=(Student) getSession().get(Student.class, stuId);
		return s;
		
	}
	
	public Student getStudentbyNumber(String stuNumber){
		Query query=getSession().createQuery("from Student s where s.stuNumber=?");
		query.setParameter(0,stuNumber);
		Student s=(Student) query.uniqueResult();
		return s;		
	}
	
	public List<Student> getAllStudent(){
		Query query= getSession().createQuery("from Student");
		List<Student> list=query.list();
		return list;	
		
	}
	/*分页*/
	
	public QueryResult getPageStudent(Integer startIndex,Integer pagesize){
		QueryResult qr=new QueryResult();
		
		try {
		Query query= getSession().createQuery("from Student");
		query.setFirstResult(startIndex);
		query.setMaxResults(pagesize);
		
		//List<Student> list=query.getResultList();
		List<Student> list=query.list();
		
		qr.setList(list);
		
		org.hibernate.Query query1= getSession().createQuery("select count(*)  from Student");		
		int totalr =((Long) ((org.hibernate.Query) query1).iterate().next()).intValue();
		
		//int totalr=(int) query1.getSingleResult();
					
		qr.setTotalrecord(totalr);
		} catch (Exception e) {		
			qr.setTotalrecord(0);	
		}
		return qr;					
	}
	
	public Student findStudent(String stuNumber,String stuPassword){
		Query query=  getSession().createQuery("from Student s where s.stuNumber=? and s.stuPassword=?");
		query.setParameter(0, stuNumber);
		query.setParameter(1, stuPassword);		
		try {
			//Student	s = (Student) ((Query) query).getSingleResult();
			Student s=(Student) query.uniqueResult();
			return s;	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return null;
		}
				
	}
	
	
	@Transactional(propagation=Propagation.REQUIRED)
	public void updateStu(Integer stuId,String pwd){
		
		Query query= getSession().createQuery("update Student s set s.stuPassword=? where s.stuId=? ");
		query.setParameter(0, pwd);
		query.setParameter(1, stuId);	
		
		query.executeUpdate();		
		
	}
	
	//根据姓名查找
	public List<Student> selectbyName(String name){
		Query query=  getSession().createQuery("from Student s where s.stuName=?");
		query.setParameter(0,name);
		try {
		List list=query.list();
		return list;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return null;
		}
	}
	
}
