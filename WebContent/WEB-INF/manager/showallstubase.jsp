<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</head>
<body>
<div style="text-align: center;">
	<a class="btn btn-default" href="${pageContext.request.contextPath}/manager/Export" role="button">导出</a>
	
<table class="table table-hover table-bordered table-striped " style="width: 600px;">
  <caption>基本信息</caption>
  <thead align="center">
    <tr>
      <td><b>学号</b></td>
      <td><b>姓名</b></td>
      <td><b>性别</b></td>
      <td><b>所在楼</b></td>
      <td><b>所在层</b></td>
   	  <td><b>班导师</b></td>
       <td><b>班导师电话</b></td>
      
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${pb.list}" var="lstu">
    <tr>
      <td>${lstu.stuNumber}</td>
      <td>${lstu.stuName}</td>
      <td>${lstu.stuSex}</td>
      <td>${lstu.stuFloor}</td>
   	  <td>${lstu.stuStorey}</td>
      <td>${lstu.stuTutor}</td>
      <td>${lstu.stuTutorPhone}</td>
    </tr>
    </c:forEach>
    
  </tbody>
</table>
 
<%--  <a href="#">上一页</a>
 <c:forEach items="${pb.pagebar}" var="pagenum">
 	<a href="#">${pagenum}</a>
 </c:forEach>
 <a href="#">下一页</a> --%>
 
<ul class="pagination pagination-sm" >
	<li><font  size="3px;">共[${pb.totalrecord}]记录   每页 [${pb.pagesize}]条 共[${ pb.totalpage}]页
 	当前页[${pb.currentpage }]</font> </li>
	<li ><a href="${pageContext.request.contextPath}/manager/showAllStuBase/${pb.previouspage}">&laquo;</a></li>
	<c:forEach items="${pb.pagebar}" var="pagenum">
	<c:if test="${pagenum==pb.currentpage }">
	<li class="active">
	<a href="${pageContext.request.contextPath}/manager/showAllStuBase/${pagenum}">${pagenum}</a>	
	</li>
	</c:if>	
	<c:if test="${pagenum!=pb.currentpage }">			
	<li>
	<a href="${pageContext.request.contextPath}/manager/showAllStuBase/${pagenum}">${pagenum}</a>	
	</li>
	</c:if>
</c:forEach>
	<li><a href="${pageContext.request.contextPath}/manager/showAllStuBase/${pb.nextpage}">&raquo;</a></li>
</ul>
</div>
</body>
</html>