package com.ping.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.ping.domain.QueryResult;
import com.ping.domain.Suggestion;

@Repository
public class SuggestionDao implements ISuggestionDao {

	@Resource
	public SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
		
	}
	
	public void saveSuggestion(Suggestion s){
		getSession().save(s);
	}
	
	public List<Suggestion> getSuggestion(Integer id){
		Query query=getSession().createQuery("from Suggestion s where s.student.stuId");
		query.setParameter(0, id);
		List<Suggestion> list=query.list();
		return list;
	}
	public List<Suggestion> getAllSuggestion(){
		Query query=getSession().createQuery("from Suggestion");
		List<Suggestion> list=query.list();
		return list;
	}
	
	/*分页显示*/
	public QueryResult getPageSuggestion(Integer index,Integer pagesize){
		QueryResult qr=new QueryResult();
		try{
			Query query=getSession().createQuery("from Suggestion");
			query.setFirstResult(index);
			query.setMaxResults(pagesize);
			List<Suggestion> list=query.list();
			qr.setList(list);
			org.hibernate.Query query1= getSession().createQuery("select count(*)  from Suggestion");		
			int totalr =((Long) ((org.hibernate.Query) query1).iterate().next()).intValue();
			qr.setTotalrecord(totalr);
		}catch(Exception e){
			qr.setTotalrecord(0);
		}		
		return qr;	
	}
}
