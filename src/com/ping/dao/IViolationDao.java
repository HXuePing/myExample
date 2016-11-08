package com.ping.dao;

import java.util.List;

import com.ping.domain.QueryResult;
import com.ping.domain.Violation;

public interface IViolationDao {

	void saveViolation(Violation v);

	List<Violation> getViolation(String name);

	List<Violation> getAllViolation();
	public QueryResult getpageviolation(Integer index,Integer pagesize);

}