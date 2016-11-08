package com.ping.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ping.domain.QueryResult;
import com.ping.domain.Roll;
import com.ping.domain.Student;

@Transactional
@Repository
public class RollDao implements IRollDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}

	public void addRoll(Roll r){
		getSession().save(r);
	}
	
	public List<Roll> getAllRoll(){		
		Query query=(Query) getSession().createQuery("from Roll");
		List<Roll> list=query.list();
		return list;				
	}
	
	public Roll getRoll(Integer stuId){
		Query query =(Query) getSession().createQuery("from Roll r where r.student.stuId=?");
		query.setParameter(0, stuId);
		try{
			Roll roll=(Roll) query.uniqueResult();
			return roll;
		}catch(Exception e){
			return null;	
		}			
	}
	
	public QueryResult  getpageroll(Integer startIndex,Integer pagesize){
		QueryResult qr=new QueryResult();
		
		try {
		Query query= getSession().createQuery("from Roll");
		query.setFirstResult(startIndex);
		query.setMaxResults(pagesize);
		
		//List<Student> list=query.getResultList();
		List<Student> list=query.list();
		
		qr.setList(list);
		
		org.hibernate.Query query1= getSession().createQuery("select count(*)  from Roll");		
		int totalr =((Long) ((org.hibernate.Query) query1).iterate().next()).intValue();
		
		//int totalr=(int) query1.getSingleResult();
					
		qr.setTotalrecord(totalr);
		} catch (Exception e) {		
			qr.setTotalrecord(0);	
		}
		return qr;			
	}
	
}
