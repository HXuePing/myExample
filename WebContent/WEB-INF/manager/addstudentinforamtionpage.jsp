<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <%--  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/messages_zh.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.metadata.js"></script> --%>
	 <style>
        .top{
            margin-top: 150px;
        }
        .error{
		color:red;
	}
    </style>
</head>
<body>
	<div id="center" class="text-center top">	
    <form  action="${pageContext.request.contextPath}/manager/addStudentInformation" method="post" id="signupForm"  >
        <div class="form-group">       		
            <label for="informationAddress">地址:</label>            
            <input type="text" name="informationAddress"  id="informationAddress" />
          
        </div>       
        <div class="form-group">
            <label for="informationHomephone">家庭电话:</label>
            <input type="text" name="informationHomephone"  id="informationHomephone" >
       		 <br>
        </div>
         <div class="form-group">
            <label for="informationLongphone">长号:</label>
            <input type="text" name="informationLongphone"  id="informationLongphone" >
       		 <br>
        </div>
        
        <div class="form-group">
            <label for="informationShortphone">短号:</label>
            <input type="text" name="informationShortphone"  id="informationShortphone" >
       		 <br>
        </div>   
         <div class="form-group">
            <label for="informationEmail">邮箱:</label>
            <input type="text" name="informationEmail"  id="informationEmail" >
       		 <br>
        </div>  
        
         <div class="form-group">
            <label for="informationQq">QQ号:</label>
            <input type="text" name="informationQq"  id="informationQq" >
       		 <br>
        </div>     
         <div class="form-group">
            <label for="informationCode">邮政编码:</label>
            <input type="text" name="informationCode"  id="informationCode" >
       		 <br>
        </div>           
      
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button  class="btn btn-primary" style="width: 210px" id="btn">添加学生联系方式</button>
            </div>
        </div>
     <input type="hidden" name="stuId" value="${stuId}"  id="stuId" />     
    </form>
    </div>
</body>
</html>