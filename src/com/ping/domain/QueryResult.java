package com.ping.domain;

import java.util.List;

public class QueryResult {
	
	private List list;   //记住用户看的页数
	private int totalrecord;    //记住总记录数
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getTotalrecord() {
		return totalrecord;
	}
	public void setTotalrecord(int totalrecord) {
		this.totalrecord = totalrecord;
	}
}
