package com.ping.dao;


import com.ping.domain.Manager;

public interface IManagerDao {
	Manager findManager(String number, String password);
	public void UpdateManager(Integer managerId,String pwd);
}