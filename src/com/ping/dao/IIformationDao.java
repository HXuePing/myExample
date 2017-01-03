package com.ping.dao;

import java.util.List;

import org.hibernate.Session;

import com.ping.domain.Information;
import com.ping.domain.QueryResult;

public interface IIformationDao {

	Session getSession();

	void addInformation(Information information);
	public List<Information> getAllInformation();
	public Information getInformation(Integer stuId);
	public QueryResult getpageInformation(Integer startIndex,Integer pagesize);
	public Information inforselectbystunumber(String stuNumber);
}