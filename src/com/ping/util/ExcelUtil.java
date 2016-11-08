package com.ping.util;

import java.io.InputStream;
import java.sql.ResultSet;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import com.ping.domain.Student;

public class ExcelUtil {

	public static void fillExcelData(List<Student> list,Workbook wb,String[] headers)throws Exception{
		int rowIndex=0;
		Sheet sheet=wb.createSheet();
		Row row=sheet.createRow(rowIndex++);
		for(int i=0;i<headers.length;i++){
			row.createCell(i).setCellValue(headers[i]);
		}
		for(Student s:list){
			row=sheet.createRow(rowIndex++);				
			row.createCell(0).setCellValue(s.getStuNumber());	
			row.createCell(1).setCellValue(s.getStuName());
			row.createCell(2).setCellValue(s.getStuSex());	
			row.createCell(3).setCellValue(s.getStuFloor());
			row.createCell(4).setCellValue(s.getStuStorey());	
			row.createCell(5).setCellValue(s.getStuTutor());
			row.createCell(6).setCellValue(s.getStuTutorPhone());	
			
		}
	}
	/*使用模板写数据*/
	public static Workbook fillExcelDataWithTemplate(List<Student> list,String templateFileName)throws Exception{
		InputStream inp=ExcelUtil.class.getResourceAsStream("/com/ping/util/"+templateFileName);
		POIFSFileSystem fs=new POIFSFileSystem(inp);
		Workbook wb=new HSSFWorkbook(fs);
		Sheet sheet=wb.getSheetAt(0);
		
		int cellNums=sheet.getRow(0).getLastCellNum();
		int rowIndex=1;
		for(Student s:list){
			Row row=sheet.createRow(rowIndex++);				
			row.createCell(0).setCellValue(s.getStuNumber());	
			row.createCell(1).setCellValue(s.getStuName());
			row.createCell(2).setCellValue(s.getStuSex());	
			row.createCell(3).setCellValue(s.getStuFloor());
			row.createCell(4).setCellValue(s.getStuStorey());	
			row.createCell(5).setCellValue(s.getStuTutor());
			row.createCell(6).setCellValue(s.getStuTutorPhone());	
			
		}
		
		return wb;
	}
	public static String formatCell(HSSFCell hssfCell) {
		if(hssfCell==null){
			return "";
		}else{
			if(hssfCell.getCellType()==HSSFCell.CELL_TYPE_BOOLEAN){
				return String.valueOf(hssfCell.getBooleanCellValue());
			}else if(hssfCell.getCellType()==HSSFCell.CELL_TYPE_NUMERIC){
				return String.valueOf(hssfCell.getNumericCellValue());
			}else{
				return String.valueOf(hssfCell.getStringCellValue());
			}
		}
		
	}
}