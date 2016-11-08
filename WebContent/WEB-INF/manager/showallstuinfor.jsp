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
<div style="float:left;margin-left:130px;margin-top:80px;">
<table class="table table-hover table-bordered table-striped " style="width: 800px;">
  <caption>联系方式信息</caption>
  <thead align="center">
    <tr>
    
    <td><b>姓名</b></td>
      <td><b>地址</b></td>
      <td><b>家庭电话</b></td>
      <td><b>长号</b></td>
      <td><b>短号</b></td>
      <td><b>邮箱</b></td>
   	  <td><b>QQ号</b></td>
       <td><b>邮政编码</b></td>
       
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${linfor}" var="linfor">
    <tr>
     <td>${linfor.student.stuId}</td>
      <td>${linfor.informationAddress}</td>
      <td>${linfor.informationHomephone}</td>     
      <td>${linfor.informationLongphone}</td>
       <td>${linfor.informationShortphone}</td>
       <td>${linfor.informationEmail}</td>    
      <td>${linfor.informationQq}</td>
       <td>${linfor.informationCode}</td>
    </tr>
    </c:forEach>
    
  </tbody>
</table>
</div>
</body>
</html>