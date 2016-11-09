package com.ping.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ping.domain.Manager;
import com.ping.domain.Student;
import com.ping.service.IManagerService;
import com.ping.util.ResponseUtil;

import net.sf.json.JSONObject;

@Controller
@RequestMapping(value="dorm")
public class LoginController {

	@Resource
	IManagerService service;
	
	@RequestMapping(value="/Login")
	public String loginpage(HttpSession session){
		
		return "newLogin";		
	}
	
	@RequestMapping(value="/LoginOut")
	public String loginout(HttpSession session){	
		if(session.getAttribute("stu")!=null){
			session.removeAttribute("stu");
		}
		if(session.getAttribute("manager")!=null){
			session.removeAttribute("manager");
		}
		return "newLogin";		
	}
	@RequestMapping(value="/LoginIndex")
	public String LoginIndex(){
		return "manager/index";	
		
	}

	@RequestMapping(value="/LoginSuccess")
	public String loginSuccess(@RequestParam(name="name",required=false) String name,@RequestParam(name="pwd",required=false) String pwd,@RequestParam(name="authCode",required=false) String authCode,Model model,HttpSession session,HttpServletResponse response,HttpServletRequest request){	
		/*response.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html;charset=UTF-8");
    	Student s=service.findstudent(name,pwd);
    	Manager m=service.getManager(name,pwd);
    	
    	try{
    		if(m!=null){
    			session.setAttribute("manager", m);
    			return "manager/index";
    		}else if(s!=null){
    			session.setAttribute("stu", s);
				return "student/sindex";
    		}else{					
				session.setAttribute("message", "用户名或密码错误,请重新输入");
				return "redirect:/dorm/Login";
			}	
    			    		
    	}catch(Exception e){
    		throw new RuntimeException(e);
    	}*/
		try{
			Student s=service.findstudent(name,pwd);
	    	Manager m=service.getManager(name,pwd);					
				if(m instanceof Manager && m!=null){					
					session.setAttribute("manager", m);
					return "manager/index";	
				}
				if(s instanceof Student && s!=null){
					session.setAttribute("stu", s);
					return "student/sindex";
				}														
		}catch(Exception e){
			throw new RuntimeException(e);
		}
		return null;
			
		
	}
	
	@RequestMapping(value="/logincode")
	public String logincode(HttpSession session,HttpServletResponse response) throws Exception{	
		String strCode=(String) session.getAttribute("strCode");	
		JSONObject jo=new JSONObject();
		jo.put("strCode", strCode);
		ResponseUtil.write(response, jo);
		return null;		
	}
	
	@RequestMapping(value="/checknamepwd")
	public String checknamepwd(HttpSession session,HttpServletResponse response,HttpServletRequest request) throws Exception{	
		/*String strCode=(String) session.getAttribute("strCode");	
		JSONObject jo=new JSONObject();
		jo.put("strCode", strCode);
		ResponseUtil.write(response, jo);*/
		JSONObject jo=new JSONObject();		
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
		Student s=service.findstudent(name,pwd);
    	Manager m=service.getManager(name,pwd);
    	System.out.println(m+"mhahah");
    	System.out.println(s+"shahah");
    	if(m!=null){    		
    		jo.put("succ",true);
    		session.setAttribute("manager", m);
    		ResponseUtil.write(response, jo);
    	}else if(s!=null){
    		jo.put("succ",true);
    		session.setAttribute("stu", s);
    		ResponseUtil.write(response, jo);   		
    	}else{
    		jo.put("succ",false);
    		ResponseUtil.write(response, jo);
    	}
		return null;		
	}
}
