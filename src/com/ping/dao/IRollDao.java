package com.ping.dao;


import java.util.List;

import com.ping.domain.QueryResult;
import com.ping.domain.Roll;

public interface IRollDao {


	void addRoll(Roll r);
	public List<Roll> getAllRoll();
	public Roll getRoll(Integer stuId);
	public QueryResult  getpageroll(Integer startIndex,Integer pagesize);
	public Roll rollselectbystunumber(String stuNumber);
}