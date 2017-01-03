package com.ping.controller;


import java.io.File;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ping.domain.Information;
import com.ping.domain.Manager;
import com.ping.domain.PageBean;
import com.ping.domain.QueryInfo;
import com.ping.domain.Roll;
import com.ping.domain.Student;
import com.ping.domain.Violation;
import com.ping.service.IManagerService;
import com.ping.util.ExcelUtil;
import com.ping.util.JsonUtil;
import com.ping.util.ResponseUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping(value="manager")
public class ManagerController {
	
	@Resource
	IManagerService service;
	
	@RequestMapping(value="/SelectByCondition")
	public String SelectByCondition(Model model,@RequestParam(required = false) String select,@RequestParam(required = false) String condition){	
		
		if(select.equals("stuNumber")){
			Student s=service.getstudentbunumber(condition);
			model.addAttribute("s", s);
			return "manager/showonestubase";
		}
		if(select.equals("stuName")){
			List list=service.selectbyName(condition);
			model.addAttribute("list",list);
			return "manager/showmorestubase";
		}
		
		return null;		
	}
	
	@RequestMapping(value="/RollSelectByCondition")
	public String RollSelectByCondition(Model model,@RequestParam(required = false) String select,@RequestParam(required = false) String condition){	
		
		if(select.equals("stuNumber")){
			Roll roll=service.rollselectbyStuNumber(condition);			
			model.addAttribute("roll", roll);
			return "manager/showoneroll";
		}
		
		return null;		
	}
	
	
	@RequestMapping(value="/InforSelectByCondition")
	public String InforSelectByCondition(Model model,@RequestParam(required = false) String select,@RequestParam(required = false) String condition){	
		
		if(select.equals("stuNumber")){
			Information infor=service.inforselectbystuNumber(condition);
			System.out.println("==========="+infor);
			model.addAttribute("information",infor);
			return "manager/showoneinfor";
		}
		
		return null;		
	}
	
	
	@RequestMapping(value="/LoginIndex")
	public String LoginIndex(){	
		return "manager/index";		
	}
	
	
	@RequestMapping(value="/LoginOut")
	public String loginout(HttpSession session){	
		if(session.getAttribute("manager")!=null){
			session.removeAttribute("manager");
		}
		return "newLogin";		
	}

	@RequestMapping(value="/addStudentBasePage")
	public String addStudentBasePage(){	
		return "manager/addstudent";		
	}
	
	
	@RequestMapping(value="/addStudentBase")
	public String addStudentBase(@RequestParam(value = "file", required = false) MultipartFile file, HttpSession session,Student s,Model model){	
		  String path = session.getServletContext().getRealPath("upload");  
	        String fileName = file.getOriginalFilename();  
	        String savefilename=UUID.randomUUID().toString()+fileName;
	        File targetFile = new File(path, savefilename);  
	        System.out.println("==========="+path);
	        System.out.println("==========="+savefilename);
	        if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        }  
	        //保存  
	        try {  
	            file.transferTo(targetFile);  
	            s.setStuImage(savefilename);
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
		
		service.addstudent(s);
		//model.addAttribute("stuId", s.getStuId());
		return "manager/addstudent";		
	}
	
	@RequestMapping(value="/addStudentRoll")
	public String addStudentRoll(Roll r,@RequestParam(name="stuId",required=false) String stuNumber,Model model){	
			/*Student s=service.getstudent(stuId);	
			r.setStudent(s);
			service.addroll(r);		
			model.addAttribute("stuId", s.getStuId());*/
		Student s=service.getstudentbunumber(stuNumber);
		r.setStudent(s);
		service.addroll(r);		
		return "manager/addstudent";		
	}
	
	@RequestMapping(value="/addStudentInformation")
	public String addStudentInformation(Information information,@RequestParam(name="stuNumber",required=false) String stuNumber,Model model){	
		Student s=service.getstudentbunumber(stuNumber);
			information.setStudent(s);
			service.addinformation(information);
		return "manager/addstudent";		
	}
	
	/*查看基本学生信息*/
	/*@RequestMapping(value="/showAllStuBase")
	public String findAllStubase(Model model){	
			QueryInfo info=new QueryInfo();
			PageBean pb=service.getpagestudent(info);			
			model.addAttribute("pb", pb);
			return "manager/showallstubase";		
	}*/
	
	@RequestMapping(value="/showAllStuBase")
	public String findAllStubase(Model model){	
			/*QueryInfo info=new QueryInfo();
			PageBean pb=service.getpagestudent(info);			
			model.addAttribute("pb", pb);*/
			return "manager/showallstubase2";		
	}
	
	@RequestMapping(value="/list")
	public void list(Model model,Integer page,Integer rows,HttpServletResponse response) throws Exception{	
		/*response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json;charset=utf8");
		Map<String,Object> map=new HashMap<String,Object>();
		Gson gson=new Gson();
		
		QueryInfo info=new QueryInfo();
		info.setCurrentpage(page);
		info.setPagesize(rows);
		
		PageBean pb=service.getpagestudent(info);
		
		map.put("rows", pb.getList());
		map.put("total", pb.getTotalpage());
		
		PrintWriter w=response.getWriter();
		String json=gson.toJson(map);
		w.write(json);*/
		QueryInfo info=new QueryInfo();
		info.setCurrentpage(page);
		info.setPagesize(rows);
		
		PageBean pb=service.getpagestudent(info);
		JSONObject result=new JSONObject();
		JSONArray jsonArray=JsonUtil.formatRsToJsonArraystu(pb.getList());
		int total=pb.getTotalrecord();
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil.write(response,result);
			
	}
	/*查看基本学生学籍信息*/
	@RequestMapping(value="/showAllStuRoll")
	public String findAllStuRoll(Model model){	
			/*List<Roll> lroll=service.getallroll();			
			model.addAttribute("lroll", lroll);*/
			return "manager/showallsturoll2";		
	}
	@RequestMapping(value="/listroll")
	public String listroll(Model model,Integer page,Integer rows,HttpServletResponse response) throws Exception{	
		
		QueryInfo info=new QueryInfo();
		info.setCurrentpage(page);
		info.setPagesize(rows);
		
		PageBean pb=service.getpageroll(info);
		JSONObject result=new JSONObject();
		JSONArray jsonArray=JsonUtil.formatRsToJsonArrayroll(pb.getList());
		int total=pb.getTotalrecord();
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil.write(response,result);
		return null;
	}
	
	@RequestMapping(value="/listinfor")
	public String listinfor(Model model,Integer page,Integer rows,HttpServletResponse response) throws Exception{	
		
		QueryInfo info=new QueryInfo();
		info.setCurrentpage(page);
		info.setPagesize(rows);
		
		PageBean pb=service.getpageinformation(info);
		JSONObject result=new JSONObject();
		JSONArray jsonArray=JsonUtil.formatRsToJsonArrayinfor(pb.getList());
		int total=pb.getTotalrecord();
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil.write(response,result);
		return null;
	}
	/*查看基本学生信息*/
	@RequestMapping(value="/showAllStuBase/{currentpage}",method=RequestMethod.GET)
	public String findAllStubase1(@PathVariable Integer currentpage,Model model){	
			QueryInfo info=new QueryInfo();
			info.setCurrentpage(currentpage);
			PageBean pb=service.getpagestudent(info);			
			model.addAttribute("pb", pb);
			return "manager/showallstubase";		
	}
	
	
	
	/*查看基本学生联系方式*/
	@RequestMapping(value="/showAllStuInformation")
	public String showAllStuInformation(Model model){	
			List<Information> linfor=service.getallinformation();		
			model.addAttribute("linfor", linfor);
			return "manager/showallstuinfor2";		
	}	
	
	//	修改管理员密码页面
	@RequestMapping(value="/updateManagerPwdPage")
	public String updateManagerPwdPage(Model model,HttpSession session){	
			Manager manager=(Manager) session.getAttribute("manager");	
			model.addAttribute("managerNumber", manager.getManagerNumber());
			return "manager/showupdatemgpage";		
	}	
	
	
	/*	修改管理员密码*/
	@RequestMapping(value="/updateManagerPwd")
	public String updateManagerPwd(Model model,HttpSession session,@RequestParam String pwd){	
			Manager manager=(Manager) session.getAttribute("manager");	
			service.updateManager(manager.getManagerId(), pwd);
			
			return "manager/loginsuccess";		
	}	
	
	/*导出信息*/	
	@RequestMapping(value="/Export")
	public String Export(HttpServletResponse response) throws Exception{		
		
		Workbook wb=new HSSFWorkbook();		
		String headers[]={"学号", "姓名","性别","所在楼","所在层","班导师","班导师电话"};
		
		List<Student> list=service.getallstudent();
		ExcelUtil.fillExcelData(list, wb, headers);
		ResponseUtil.export(response, wb,"xuexi.xls");
		return null;	
	}
	/*导出信息*/	
	@RequestMapping(value="/ExportRoll")
	public String ExportRoll(HttpServletResponse response) throws Exception{		
		
		Workbook wb=new HSSFWorkbook();		
		String headers[]={"身份证号", "生源地","班号","婚姻状态","民族","政治面貌","专业","准考证号","入学年份","毕业年份","单位"};
		
		List<Roll> list=service.getallroll();
		ExcelUtil.fillExcelDataRoll(list, wb, headers);
		ResponseUtil.export(response, wb,"xuexi.xls");
		return null;	
	}
	/*导出信息*/	
	@RequestMapping(value="/ExportInfor")
	public String ExportInfor(HttpServletResponse response) throws Exception{		
		
		Workbook wb=new HSSFWorkbook();		
		String headers[]={"地址", "邮政编码","邮箱","家庭号码","长号","QQ号","短号"};
		
		List<Information> list=service.getallinformation();
		ExcelUtil.fillExcelDataInformation(list, wb, headers);
		ResponseUtil.export(response, wb,"xuexi.xls");
		return null;	
	}
	
	/*导入信息*/
	@RequestMapping(value="/upload")
	public String upload(HttpServletResponse response,HttpServletRequest request,@RequestParam MultipartFile uploadfile ) throws Exception{				

		
	/*	
		 //1、创建一个DiskFileItemFactory工厂
	 DiskFileItemFactory factory = new DiskFileItemFactory();
	 System.out.println(factory+"=====================");
	 //2、创建一个文件上传解析器
	 ServletFileUpload upload = new ServletFileUpload(factory);
	 System.out.println(upload+"=====================");
	 @SuppressWarnings("unchecked")
	List<FileItem> list = upload.parseRequest(request);
	 System.out.println(list+"=====================");*/
	
/*	 for(FileItem item : list){
		 System.out.println(item.getFieldName()+"=====================");*/
		// InputStream in = item.getInputStream();
		 try{
		 POIFSFileSystem fs=new POIFSFileSystem(uploadfile.getInputStream());	
		 HSSFWorkbook wb=new HSSFWorkbook(fs);
			HSSFSheet hssfSheet=wb.getSheetAt(0);  // 获取第一个Sheet页
			if(hssfSheet!=null){
				for(int rowNum=1;rowNum<=hssfSheet.getLastRowNum();rowNum++){
					HSSFRow hssfRow=hssfSheet.getRow(rowNum);
					if(hssfRow==null){
						continue;
					}
					Student s=new Student();
					s.setStuNumber(ExcelUtil.formatCell(hssfRow.getCell(0)));
					s.setStuName(ExcelUtil.formatCell(hssfRow.getCell(1)));			
					s.setStuPassword(ExcelUtil.formatCell(hssfRow.getCell(2)));
					s.setStuSex(ExcelUtil.formatCell(hssfRow.getCell(3)));
					s.setStuFloor(ExcelUtil.formatCell(hssfRow.getCell(4)));
					s.setStuStorey(ExcelUtil.formatCell(hssfRow.getCell(5)));
					s.setStuTutor(ExcelUtil.formatCell(hssfRow.getCell(6)));
					s.setStuTutorPhone((ExcelUtil.formatCell(hssfRow.getCell(7))));
					/*user.setName(ExcelUtil.formatCell(hssfRow.getCell(0)));
					user.setPhone(ExcelUtil.formatCell(hssfRow.getCell(1)));
					user.setEmail(ExcelUtil.formatCell(hssfRow.getCell(2)));
					user.setQq(ExcelUtil.formatCell(hssfRow.getCell(3)));*/
					service.addstudent(s);
					
				}
			}
	 		
		
		
		JSONObject result=new JSONObject();
		result.put("success", "true");
		ResponseUtil.write(response, result);
		}catch(Exception e){
			return null;
		}
		return null;	
	}
	
	/*违规信息*/
	@RequestMapping(value="/showallviolation")
	public String getAllViolationPage(Model modal){
	/*	List<Violation> vlist=service.getallviolation();
		modal.addAttribute("vlist", vlist);*/
		return "manager/showallviolation";
	}
	
	@RequestMapping(value="/showallviolationlist")
	public String getallviolation(Integer page,Integer rows,HttpServletResponse response) throws Exception{
		QueryInfo info=new QueryInfo();
		info.setCurrentpage(page);
		info.setPagesize(rows);
		
		PageBean pb=service.getPageViolation(info);
		
		JSONObject jsonobject=new JSONObject();
				
		JSONArray jsonarray=JsonUtil.formatRsToJsonArrayvio(pb.getList());
		Integer total=pb.getTotalpage();
		
		jsonobject.put("rows", jsonarray);
		jsonobject.put("total", total);
		
		ResponseUtil.write(response, jsonobject);
		return null;	
	}
	
	/*添加违规信息*/
	
	@RequestMapping(value="/addviolation")
	public String addviolation(Model modal,HttpServletRequest request/*@RequestParam(name="violationHappentime",required=false)String violationHappentime,@RequestParam(name="violationEnteringtime",required=false)String violationEnteringtime,*/) throws ParseException{
		String violationstuNumber=request.getParameter("violationstuNumber");
		String violationstuName=request.getParameter("violationstuName");
		String violationHappentime=request.getParameter("violationHappentime");
		String violationEnteringtime=request.getParameter("violationEnteringtime");
		String violationDeregulation=request.getParameter("violationDeregulation");
		String violationType=request.getParameter("violationType");
		Violation v=new Violation();
		v.setViolationId(14);
		v.setViolationDeregulation(violationDeregulation);
		v.setViolationHappentime(new Date());
		v.setViolationEnteringtime(new Date());
		v.setViolationstuName(violationstuName);
		v.setViolationstuNumber(violationstuNumber);
		v.setViolationType(violationType);
		service.saveviolation(v);		
		return "manager/showallviolation";
	}
/*删除违规信息*/
	@RequestMapping(value="/deleteviolation")
	public String deleteviolation(Model modal,HttpServletRequest request/*@RequestParam(name="violationHappentime",required=false)String violationHappentime,@RequestParam(name="violationEnteringtime",required=false)String violationEnteringtime,*/) throws ParseException{
		service.deletevio();
		return "manager/showallviolation";
	}
	
	/*@RequestMapping(value="/editviolation")
	public void editviolation(Model modal,HttpServletRequest request,HttpServletResponse response,@RequestParam(name="violationId",required=false)Integer violationId,@RequestParam(name="violationHappentime",required=false)String violationHappentime,@RequestParam(name="violationEnteringtime",required=false)String violationEnteringtime,Violation v) throws ParseException{	
		//service.saveviolation(v);
		JSONObject jo=new JSONObject();		
		try{
		Integer violationId=Integer.parseInt(request.getParameter("violationId"));

		service.editViolation(service.getvioaltionbyid(violationId));
		jo.put("succ",true);
		ResponseUtil.write(response, jo);
		}catch(Exception e){
			jo.put("succ",false);
			try {
				ResponseUtil.write(response, jo);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		
	}*/
	@RequestMapping(value="/editviolation/{violationId}")
	public void editviolation(Model modal,@PathVariable Integer violationId) throws ParseException{	
		//service.saveviolation(v);
		service.editViolation(service.getvioaltionbyid(violationId));
	}
	
	/*添加投诉建议*/
	@RequestMapping(value="/showallsuggestion")
	public String showallsuggestion(Model modal,/*@RequestParam(name="violationHappentime",required=false)String violationHappentime,@RequestParam(name="violationEnteringtime",required=false)String violationEnteringtime,*/Violation v) throws ParseException{	
		return "manager/showallsuggestion";
	}
	
	
	
	@RequestMapping(value="/showallsuggestionlist")
	public String showallsuggestionlist(Model modal,Integer page,Integer rows,HttpServletResponse response/*@RequestParam(name="violationHappentime",required=false)String violationHappentime,@RequestParam(name="violationEnteringtime",required=false)String violationEnteringtime,*/) throws Exception{	
		QueryInfo info=new QueryInfo();
		info.setCurrentpage(page);
		info.setPagesize(rows);
		
		PageBean pb=service.getpagesuggestion(info);
		
		JSONObject jsonobject=new JSONObject();
		
		JSONArray jsonarray=JsonUtil.formatRsToJsonArraysug(pb.getList());
		Integer count=pb.getTotalpage();
		
		jsonobject.put("rows", jsonarray);
		jsonobject.put("total", count);
		
		ResponseUtil.write(response, jsonobject);
		
		return null;
	}
	
	
}
