package com.ping.controller;

import java.util.List;

import javax.annotation.Resource;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ping.domain.Information;
import com.ping.domain.Roll;
import com.ping.domain.Student;
import com.ping.domain.Suggestion;
import com.ping.domain.Violation;
import com.ping.service.IManagerService;

@Controller
@RequestMapping(value="/student")
public class StudentController {
	@Resource
	IManagerService service;
	
	@RequestMapping(value="/LoginIndex")
	public String LoginIndex(HttpSession session){	
		return "student/sindex";		
	}
	
	@RequestMapping(value="/LoginOut")
	public String loginout(HttpSession session){	
		if(session.getAttribute("stu")!=null){
			session.removeAttribute("stu");
		}
		return "newLogin";		
	}
	
	
	@RequestMapping(value="/showOneStuBase")
	public String showOneStuBase(Model model,HttpSession session){
		
		Student s=(Student) session.getAttribute("stu");
		model.addAttribute("s", s);
		return "student/showonestubase";		
	}
	@RequestMapping(value="/showOneStuRoll")
	public String showOneStuRoll(Model model,HttpSession session){		
		Student s=(Student) session.getAttribute("stu");
		Roll roll=service.getroll(s.getStuId());
		
		model.addAttribute("roll", roll);
		return "student/showonesturoll";		
	}
	
	@RequestMapping(value="/showOneStuInformation")
	public String showOneStuInformation(Model model,HttpSession session){		
		Student s=(Student) session.getAttribute("stu");
		Information information=service.getInformation(s.getStuId());
		
		model.addAttribute("information", information);
		return "student/showonestuinfor";		
	}
	/*学生修改密码页*/
	
	@RequestMapping(value="/updateStuPwdPage")
	public String updateStuPwdPage(Model model,HttpSession session){		
		Student s=(Student) session.getAttribute("stu");
		
		model.addAttribute("stu", s);
		return "student/showupdatestupage";		
	}
	
	@RequestMapping(value="/updateStuPwd")
	public String updateStuPwd(Model model,HttpSession session,@RequestParam String pwd){		
		Student s=(Student) session.getAttribute("stu");
		service.updatePassword(s.getStuId(), pwd);
	
		return "student/loginsuccess";		
	}
	
	
	@RequestMapping(value="/showviolation")
	public String showViolation(Model model,HttpSession session){		
		Student s=(Student) session.getAttribute("stu");
		List<Violation> list=service.getviolation(s.getStuNumber());
		model.addAttribute("vlist", list);
		return "student/showviolation";		
	}
	@RequestMapping(value="/showsuggestionpage")
	public String showsuggestionpage(Model model,HttpSession session){		
		Student s=(Student) session.getAttribute("stu");
		model.addAttribute("s", s);
		return "student/showsuggestionpage";		
	}
	
	@RequestMapping(value="/addsuggestion")
	public String addsuggestion(Model model,Suggestion s,HttpSession session){		
		service.savesuggestion(s);
		return "student/message";		
	}
	
	/*打印信息*/
	
	@RequestMapping(value="/showpprove")
	public String showpprove(Model model,HttpSession session){	
		Student s=(Student) session.getAttribute("stu");
		Roll roll=service.getroll(s.getStuId());
		model.addAttribute("s", s);
		model.addAttribute("roll", roll);
		return "student/showpprove";		
	}
}
