package com.ping.test;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ping.domain.Information;
import com.ping.domain.Manager;
import com.ping.domain.Roll;
import com.ping.domain.Student;


public class TestManager {
	private SessionFactory  sessionFactory;
	private Session session;

	@Before
	public void init(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		sessionFactory=ac.getBean(SessionFactory.class);
		System.out.println(sessionFactory+"==========sessionFactory");
		/*Configuration cfg=new Configuration().configure();
		 sessionFactory=cfg.buildSessionFactory();*/
		session=sessionFactory.openSession();
	}
	
	
	@Test
	public void testManager1(){
		Transaction ts=	session.beginTransaction();
		
		Integer i=321;
		String pwd="123456";
		
		String sql="from Manager";
		Query query=(Query) session.createQuery(sql);
		
		System.out.println(query+"==========aaa");
		Manager m=(Manager) query.getResultList().get(0);
		System.out.println(m+"=========aa");
		ts.commit();
		sessionFactory.close();
		session.close();
	}
	
	@Test
	public void teststudent1(){
		Transaction ts=	session.beginTransaction();
		
//		Query query=session.createQuery("from Student s where s.stuNumber=? and s.stuPassword=?");
//		query.setParameter(0, "3213002308");
//		query.setParameter(1, "123456");		
//		try {
//			Student	s = (Student) query.getSingleResult();
//			System.out.println(s+"=========");
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			System.out.println("null"+"=========");
//		}
		/*Query query=session.createQuery("from Information r where r.student.stuId=?");
		query.setParameter(0, 2);
		try{
			Information information=(Information) query.getSingleResult();
			System.out.println(information+"=========");
		}catch(Exception e){
			System.out.println("null"+"=========");
		}	*/
		
//		Query query=session.createQuery("update Manager m set m.managerPassword=?  where m.managerId=?");
//		query.setParameter(0, "123456");
//		query.setParameter(1,1);		
//		query.executeUpdate();
		
		Query query=(Query) session.createQuery("update Student s set s.stuPassword=? where s.stuId=? ");
		query.setParameter(0, "123456");
		query.setParameter(1, 2);
		query.executeUpdate();
		
		ts.commit();
		sessionFactory.close();
		session.close();
	}
	
}
