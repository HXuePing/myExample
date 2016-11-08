package com.ping.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

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
	
}
