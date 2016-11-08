package com.ping.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.ping.domain.Manager;

@Transactional
@Repository
public class ManagerDao implements IManagerDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}
	public Manager findManager(String number,String password){
		
		/*String sql="from Manager m where m.managerNumber=? and m.managerPassword=?";*/
		Query query= getSession().createQuery("from Manager m where m.managerNumber=? and m.managerPassword=?");
		query.setParameter(0, number);
		query.setParameter(1,password);		
		try {
			//Manager m=(Manager) query.getSingleResult();	
			Manager m=(Manager) query.uniqueResult();
			return m;
		} catch (Exception e) {
			return null;
		}
			
	}
	
@Transactional(propagation=Propagation.REQUIRED)	
public void UpdateManager(Integer managerId,String pwd){
		
		/*String sql="from Manager m where m.managerNumber=? and m.managerPassword=?";*/
		Query query=getSession().createQuery("update Manager m set m.managerPassword=?  where m.managerId=?");
		query.setParameter(0, pwd);
		query.setParameter(1,managerId);		
		query.executeUpdate();
	
	}
}
