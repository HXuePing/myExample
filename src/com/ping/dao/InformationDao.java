package com.ping.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ping.domain.Information;
import com.ping.domain.QueryResult;
import com.ping.domain.Student;

@Transactional
@Repository
public class InformationDao implements IIformationDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}

	public void addInformation(Information information){
		getSession().save(information);
	}
	
	public List<Information> getAllInformation(){
		Query query=(Query) getSession().createQuery("from Information");
		List<Information> list=query.list();
		return list;
	}
	
	public Information getInformation(Integer stuId){
		Query query=(Query) getSession().createQuery("from Information r where r.student.stuId=?");
		query.setParameter(0, stuId);
		try{
			Information information=(Information) query.uniqueResult();
			return information;
		}catch(Exception e){
			return null;
		}		
				
	}
	
	public QueryResult getpageInformation(Integer startIndex,Integer pagesize){
		QueryResult qr=new QueryResult();
		
		try {
		Query query= getSession().createQuery("from Information");
		query.setFirstResult(startIndex);
		query.setMaxResults(pagesize);
		
		//List<Student> list=query.getResultList();
		List<Student> list=query.list();
		
		qr.setList(list);
		
		org.hibernate.Query query1= getSession().createQuery("select count(*)  from Information");		
		int totalr =((Long) ((org.hibernate.Query) query1).iterate().next()).intValue();
		
		//int totalr=(int) query1.getSingleResult();
					
		qr.setTotalrecord(totalr);
		} catch (Exception e) {		
			qr.setTotalrecord(0);	
		}
		return qr;			
	}
	
}
