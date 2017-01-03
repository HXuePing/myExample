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
import com.ping.domain.Violation;

@Repository
public class ViolationDao implements IViolationDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}
		
	public void saveViolation(Violation v){
		getSession().save(v);			
	}
	public List<Violation> getViolation(String name){
		Query query =getSession().createQuery("from Violation v where v.violationstuNumber=?");
		query.setParameter(0,name);
		List<Violation> list=query.list();
		return list;
	}
	public Violation getViolationbyId(Integer violationId){
		Query query =getSession().createQuery("from Violation v where v.violationId=?");
		query.setParameter(0,violationId);
		Violation v=(Violation) query.uniqueResult();
		return v;
	}
	
	
	public List<Violation> getAllViolation(){
		Query query=getSession().createQuery("from Violation");
		List<Violation> list=query.list();
		return list;	
	}
	
	/*分页*/
	public QueryResult getpageviolation(Integer index,Integer pagesize){
		QueryResult qr=new QueryResult();
		try{
		Query query=getSession().createQuery("from Violation");
		query.setFirstResult(index);
		query.setMaxResults(pagesize);
		List<Violation> list=query.list();
		qr.setList(list);
		org.hibernate.Query query1= getSession().createQuery("select count(*)  from Violation");		
		int totalr =((Long) ((org.hibernate.Query) query1).iterate().next()).intValue();
		qr.setTotalrecord(totalr);
		}catch(Exception e){
			qr.setTotalrecord(0);
			return qr;
		}
		
		return qr;	
	}
	

	@Transactional(propagation=Propagation.REQUIRED)
	public void editViolation(Violation v){
		
		Query query= getSession().createQuery("update Violation v set v.violationstuNumber=?,v.violationstuName=?,v.violationHappentime=?,v.violationEnteringtime=?,v.violationDeregulation=?,v.violationType=? where v.violationId=? ");
		query.setParameter(0,v.getViolationstuNumber());
		query.setParameter(1,"ping");	
		query.setParameter(2,v.getViolationHappentime());
		query.setParameter(3,v.getViolationEnteringtime());	
		query.setParameter(4,v.getViolationDeregulation());
		query.setParameter(5,v.getViolationType());	
		query.setParameter(6,1);	
		query.executeUpdate();		
		
	}
	
	/*删除信息*/
	@Transactional(propagation=Propagation.REQUIRED)
	public void deletevio(){
		Query query= getSession().createQuery("delete from Violation v where v.violationId=? ");
		query.setParameter(0,1);
		query.executeUpdate();
	}
}
