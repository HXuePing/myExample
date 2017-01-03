package com.ping.util;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.text.SimpleDateFormat;
import java.util.List;

import com.ping.domain.Information;
import com.ping.domain.Roll;
import com.ping.domain.Student;
import com.ping.domain.Suggestion;
import com.ping.domain.Violation;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JsonUtil {
	public static JSONArray formatRsToJsonArraystu(List<Student> list)throws Exception{
		
		JSONArray array=new JSONArray();
		for(Student s:list){
			JSONObject mapOfColValues=new JSONObject();
			mapOfColValues.put("stuNumber",s.getStuNumber());
			mapOfColValues.put("stuName",s.getStuName());
			mapOfColValues.put("stuSex",s.getStuSex());
			mapOfColValues.put("stuFloor",s.getStuFloor());
			mapOfColValues.put("stuStorey",s.getStuStorey());
			mapOfColValues.put("stuTutor",s.getStuTutor());
			mapOfColValues.put("stuTutorPhone",s.getStuTutorPhone());
			mapOfColValues.put("stuImage","<a href='/myExample/upload/"+s.getStuImage()+"'>"+"查看图片"+"</a>");
			//mapOfColValues.put("stuImage","<a href='/myExample/upload/1.jpg'>"+"查看图片"+"</a>");
			array.add(mapOfColValues);
		}
		return array;
	}


	public static JSONArray formatRsToJsonArrayvio(List<Violation> list)throws Exception{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		JSONArray array=new JSONArray();
		for(Violation v:list){
			JSONObject mapOfColValues=new JSONObject();
			mapOfColValues.put("violationstuNumber",v.getViolationstuNumber());
			mapOfColValues.put("violationstuName",v.getViolationstuName());
			mapOfColValues.put("violationHappentime",sdf.format(v.getViolationHappentime()));
			mapOfColValues.put("violationEnteringtime",sdf.format(v.getViolationEnteringtime()));
			mapOfColValues.put("violationDeregulation",v.getViolationDeregulation());
			mapOfColValues.put("violationType",v.getViolationType());
			array.add(mapOfColValues);
		}
		return array;
	}
	
	public static JSONArray formatRsToJsonArraysug(List<Suggestion> list)throws Exception{
			
		JSONArray array=new JSONArray();
		for(Suggestion suggestion:list){
			JSONObject mapOfColValues=new JSONObject();
			
			mapOfColValues.put("suggestionName",suggestion.getSuggestionName());
			mapOfColValues.put("suggestionNumber",suggestion.getSuggestionNumber());
			mapOfColValues.put("suggestionDecription",suggestion.getSuggestionDecription());
			mapOfColValues.put("suggestionType",suggestion.getSuggestionType());
			
			array.add(mapOfColValues);
		}
		return array;
	}


	public static JSONArray formatRsToJsonArrayroll(List<Roll> list) {
		JSONArray array=new JSONArray();
		for(Roll roll:list){
			JSONObject mapOfColValues=new JSONObject();
			
//			mapOfColValues.put("stuName",1);
			mapOfColValues.put("rollIdCard",roll.getRollIdCard());
			mapOfColValues.put("rollRegistTrationNumber",roll.getRollRegistTrationNumber());
			mapOfColValues.put("rollStartdate",roll.getRollStartdate());
			mapOfColValues.put("rollEnddate",roll.getRollEnddate());
			mapOfColValues.put("rollUnit",roll.getRollUnit());
			mapOfColValues.put("rollProfession",roll.getRollProfession());
			mapOfColValues.put("rollNation",roll.getRollNation());
			
			mapOfColValues.put("rollPoliticalstatus",roll.getRollPoliticalstatus());
			mapOfColValues.put("rollAddress",roll.getRollAddress());
			mapOfColValues.put("rollClass",roll.getRollClass());
			mapOfColValues.put("rollMarriage",roll.getRollMarriage());
			array.add(mapOfColValues);
		}
		return array;
	}


	public static JSONArray formatRsToJsonArrayinfor(List<Information> list) {
		JSONArray array=new JSONArray();
		for(Information in:list){
			JSONObject mapOfColValues=new JSONObject();
			
			mapOfColValues.put("stuName",in.getStudent().getStuName());
			mapOfColValues.put("informationAddress",in.getInformationAddress());
			mapOfColValues.put("informationHomephone",in.getInformationHomephone());
			mapOfColValues.put("informationLongphone",in.getInformationLongphone());
			mapOfColValues.put("informationShortphone",in.getInformationShortphone());
			mapOfColValues.put("informationEmail",in.getInformationEmail());
			mapOfColValues.put("informationQq",in.getInformationQq());
			mapOfColValues.put("informationCode",in.getInformationCode());
			
			array.add(mapOfColValues);
		}
		return array;
	}


	
}
