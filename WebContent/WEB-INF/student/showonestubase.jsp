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
  					<table  width="90%" border="0"  cellpadding="0" cellspacing="0"   class="CContent">
		                    <tr>
		                        <th class="tablestyle_title">个人信息</th>
		                    </tr>
		
		                    <tr>
		                        <td>
		                            <center><p><font style="COLOR: #ff0000; FONT-SIZE: 16pt">敬请完善您的个人联系方式，以便为您提供更好更快的住宿服务，谢谢！</font></p></center>
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
		                            <fieldset>
		                                <legend>舍友信息</legend>
		                                <table border="0" cellpadding="2" cellspacing="1" class="addtable" width="100%">
		                                    <tr>
		                                        <td align="right" width="10%" class="td">姓名:</td>
		                                        <td width="23%">吴雨晨</td>
		                                        <td align="right" width="10%" class="td">姓名:</td>
		                                        <td width="23%">翟飞凡</td>
		                                        <td align="right" width="10%" class="td">姓名:</td>
		                                        <td width="24%">陈丽晓</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="10%" class="td">学号:</td>
		                                        <td width="23%">3213003918</td>
		                                        <td align="right" width="10%" class="td">学号:</td>
		                                        <td width="23%">3213003920</td>
		                                        <td align="right" width="10%" class="td">学号:</td>
		                                        <td width="24%">3213002294</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="10%" class="td">院系:</td>
		                                        <td width="23%">计算机学院</td>
		                                        <td align="right" width="10%" class="td">院系:</td>
		                                        <td width="23%">计算机学院</td>
		                                        <td align="right" width="10%" class="td">院系:</td>
		                                        <td width="24%">计算机学院</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="10%" class="td">专业:</td>
		                                        <td width="23%">计算机科学与技术</td>
		                                        <td align="right" width="10%" class="td">专业:</td>
		                                        <td width="23%">计算机科学与技术</td>
		                                        <td align="right" width="10%" class="td">专业:</td>
		                                        <td width="24%">计算机科学与技术</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="10%" class="td">班级:</td>
		                                        <td width="23%">130801</td>
		                                        <td align="right" width="10%" class="td">班级:</td>
		                                        <td width="23%">130801</td>
		                                        <td align="right" width="10%" class="td">班级:</td>
		                                        <td width="24%">130801</td>
		                                    </tr>
		                                </table>
		                            </fieldset>
		                    </td>
		                   
		                    </tr>
		                  
                    </table>
   <br>
</body>
</html>