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
		                                        <td align="right" width="18%" class="td">姓名:</td>
		                                        <td width="26%">${information.student.stuId}</td>
		                                        <td align="right" width="17%" class="td">地址:</td>
		                                        <td width="39%">${information.informationAddress}</td>
		                                    </tr>   
		                                    <tr>
		                                        <td align="right" width="18%" class="td">家庭电话:</td>
		                                        <td width="26%">${information.informationHomephone}</td>
		                                        <td align="right" width="17%" class="td">长号:</td>
		                                        <td width="39%">${information.informationLongphone}</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="18%" class="td">短号:</td>
		                                        <td width="26%">${information.informationShortphone}</td>
		                                        <td align="right" width="17%" class="td">邮箱:</td>
		                                        <td width="39%">${information.informationEmail}</td>
		                                    </tr>
		                                    <tr>
		                                    
		                                        <td align="right" width="18%" class="td">QQ号:</td>
		                                        <td width="26%">${information.informationQq}</td>
		                                         <td align="right" width="17%" class="td">邮政编码:</td>
		                                        <td width="39%">${information.informationCode}</td>
		                                    </tr>
		                                   
		                                    </tr>
		                                </table>
		                            </fieldset>
		                            <br>
</td>
</tr>
</table>
<div align="center">
<a href="${pageContext.request.contextPath}/manager/showAllStuInformation" class="easyui-linkbutton" data-options="">返回</a>
</div>
</div>
</body>
</html>