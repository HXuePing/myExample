<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="margin-left: 180px;margin-top: 100px;">
<table  width="90%" border="0"  cellpadding="0" cellspacing="0"   class="CContent">
  <tr>
<th class="tablestyle_title"></th>
		                    </tr>
		
		                    <tr>
		                        <td>
		                            <center><p><font style="COLOR: #ff0000; FONT-SIZE: 16pt">查询的个人信息如下</font></p></center>
		                            <fieldset>
		                                <legend>住宿信息</legend>
		                                <table border="0" cellpadding="2" cellspacing="1" class="addtable" width="100%">
		                                    <tr>
		                                    <tr>
		                                        <td align="right" width="18%" class="td">学生学号:</td>
		                                        <td width="26%">${s.stuNumber}</td>
		                                        <td align="right" width="17%" class="td">姓名:</td>
		                                        <td width="39%">${s.stuName}</td>
		                                    </tr>
		
		                                    <tr>
		                                        <td align="right" width="18%" class="td">性别:</td>
		                                        <td width="26%">${s.stuSex}</td>
		                                        <td align="right" width="17%" class="td">住宿情况:</td>
		                                        <td width="39%">${s.stuFloor}栋${s.stuStorey}</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="18%" class="td">班导师:</td>
		                                        <td width="26%">${s.stuTutor}</td>
		                                        <td align="right" width="17%" class="td">班导师电话:</td>
		                                        <td width="39%">${s.stuTutorPhone}</td>
		                                    </tr>
		                                    </tr>
		                                </table>
		                            </fieldset>
		                            <br>
		                            <br>
		                           
		                    </td>
		                   
		                    </tr>
		                  
                    </table>
   <br>
   <div align="center">
<a href="${pageContext.request.contextPath}/manager/showAllStuBase" class="easyui-linkbutton" data-options="">返回</a>
</div>
</div>
</body>
</html>