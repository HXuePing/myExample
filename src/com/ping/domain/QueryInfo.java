package com.ping.domain;

public class QueryInfo {
	
	private int currentpage = 1;  //当前页
	private int pagesize = 5;     //每页显示的记录数
	private int startindex;     //开始页
	
	
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getStartindex() {
		this.startindex = (this.currentpage-1)*this.pagesize;
		return startindex;
	}
}
