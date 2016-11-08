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
    <form  action="${pageContext.request.contextPath}/manager/addStudentRoll" method="post" id="signupForm"  >
        <div class="form-group">       		
            <label for="rollIdCard">身份证号:</label>            
            <input type="text" name="rollIdCard"  id="rollIdCard" />
          
        </div>       
        <div class="form-group">
            <label for="rollRegistTrationNumber">准考证号:</label>
            <input type="text" name="rollRegistTrationNumber"  id="rollRegistTrationNumber" >
       		 <br>
        </div>
         <div class="form-group">
            <label for="rollStartdate">入学年份:</label>
            <input type="text" name="rollStartdate"  id="rollStartdate" >
       		 <br>
        </div>
         
        <div class="form-group">
            <label for="rollEnddate">毕业年份:</label>
            <input type="text" name="rollEnddate"  id="rollEnddate" >
       		 <br>
        </div>   
         <div class="form-group">
            <label for="rollUnit">所在单位:</label>
            <input type="text" name="rollUnit"  id="rollUnit" >
       		 <br>
        </div>  
        
         <div class="form-group">
            <label for="rollProfession">专业:</label>
            <input type="text" name="rollProfession"  id="rollProfession" >
       		 <br>
        </div>     
         <div class="form-group">
            <label for="rollNation">民族:</label>
            <input type="text" name="rollNation"  id="rollNation" >
       		 <br>
        </div>   
              <div class="form-group">
            <label for="rollPoliticalstatus">政治面貌:</label>
            <input type="text" name="rollPoliticalstatus"  id="rollPoliticalstatus" >
       		 <br>
        </div>  
         <div class="form-group">
            <label for="rollAddress">生源地:</label>
            <input type="text" name="rollAddress"  id="rollAddress" >
       		 <br>
        </div>     
       <div class="form-group">
            <label for="rollClass">班号:</label>
            <input type="text" name="rollClass"  id="rollClass" >
       		 <br>
        </div>    
         <div class="form-group">
            <label for="rollMarriage">婚姻状态:</label>
            <input type="text" name="rollMarriage"  id="rollMarriage" >
       		 <br>
        </div>    
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button  class="btn btn-primary" style="width: 210px" id="btn">添加学生信息</button>
            </div>
        </div>
       <input type="hidden" name="stuId" value="${stuId}"  id="stuId" />             
    </form>
    </div>
</body>
</html>