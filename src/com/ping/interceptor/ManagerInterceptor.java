package com.ping.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.ping.domain.Manager;

public class ManagerInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object handler)
			throws Exception {
		Manager manager=(Manager) request.getSession().getAttribute("manager");
		if(manager==null){
			 request.getRequestDispatcher("/WEB-INF/newLogin.jsp").forward(request, response); 
		}
		
		return super.preHandle(request, response, handler);
	}

}
