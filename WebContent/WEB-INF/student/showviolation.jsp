<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table  width="90%" border="0"  cellpadding="0" cellspacing="0"   class="CContent">
		                    <tr>
		                       
		                    </tr>
							<tr>
							
					
							</tr>
							<tbody>
		                    <tr>
		                  
		                  
		                    <td > <fieldset>  
		                      <legend>违纪违规</legend>
		                       
		                        <table border="1"  >
		                        <tr align="center" bgcolor="#FAFAF1" height="22" style="cursor:pointer;">
	<th width="12%%">违纪时间</th>
	<th width="12%">录入时宿舍</th>
	<th width="12%">录入时间</th>
	<th width="15%">违反条例</th>
	<th width="34%">违纪内容</th>
	<th width="15%">处罚类型</th>
</tr>
		                       
		                         <c:forEach items="${vlist}" var="v">
		                          <tr align='center' bgcolor="#FFFFFF" >
		                         <td>
							${v.violationstuNumber }</td>
					<td>${v.violationstuName}</td>
						<td>${v.violationHappentime}</td>
					<td>${v.violationEnteringtime}</td>
					<td>${v.violationDeregulation}</td>
					<td>${v.violationType}</td>
					
					</tr>
					</c:forEach>
					
					</table>
					
	     </fieldset></td>
	
	                         
	   </tr></tbody>
   </table>

</body>
</html>