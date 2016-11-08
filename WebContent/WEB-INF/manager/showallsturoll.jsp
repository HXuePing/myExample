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
  <caption>学籍信息</caption>
  <thead align="center">
    <tr>
    
      <td><b>姓名</b></td>
      <td><b>身份证号</b></td>
      <td><b>准考证号</b></td>
      <td><b>入学年份</b></td>
      <td><b>毕业年份</b></td>
   	  <td><b>所在单位</b></td>
       <td><b>专业</b></td>
       <td><b>民族</b></td>
       <td><b>政治面貌</b></td>
       <td><b>生源地</b></td>
       <td><b>班号</b></td>
        <td><b>婚姻状态</b></td>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${lroll}" var="lroll">
    <tr>
      <td>${lroll.rollIdCard}</td>
      <td>${lroll.student.stuName}</td>
      <td>${lroll.rollRegistTrationNumber}</td>
      <td>${lroll.rollStartdate}</td>
      <td>${lroll.rollEnddate}</td>
      <td>${lroll.rollUnit}</td>
       <td>${lroll.rollProfession}</td>
      <td>${lroll.rollNation}</td>
      <td>${lroll.rollPoliticalstatus}</td>
      <td>${lroll.rollAddress}</td>
      <td>${lroll.rollClass}</td>
      <td>${lroll.rollMarriage}</td>
    </tr>
    </c:forEach>
    
  </tbody>
</table>
</div>
</body>
</html>