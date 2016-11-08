<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	 <style>
       
        .error{
		color:red;
	}
    </style>
</head>
<body>
	<div  style="float: left;margin-left: 400px;margin-top:60px;">	
    <form  action="${pageContext.request.contextPath}/manager/addStudentBase" method="post" id="signupForm"  >
        <div class="form-group">       		
            <label for="stuNumber">学号:</label>            
            <input type="text" name="stuNumber"  id="stuNumber" />
          
        </div>       
        <div class="form-group">
            <label for="stuName">姓名:</label>
            <input type="text" name="stuName"  id="stuName" >
       		 <br>
        </div>
         <div class="form-group">
            <label for="stuPassword">密码:</label>
            <input type="text" name="stuPassword"  id="stuPassword" >
       		 <br>
        </div>
         <div class="form-group">
          	  性别:
            <select name="stuSex">
            	<option value="男" selected="selected">男</option>
            	<option value="女">女</option>
            </select>
                 		
        </div>
        <div class="form-group">
            <label for="stuFloor">楼:</label>
            <input type="text" name="stuFloor"  id="stuFloor" >
       		 <br>
        </div>   
         <div class="form-group">
            <label for="stuStorey">层:</label>
            <input type="text" name="stuStorey"  id="stuStorey" >
       		 <br>
        </div>  
        
         <div class="form-group">
            <label for="stuTutor">班导师:</label>
            <input type="text" name="stuTutor"  id="stuTutor" >
       		 <br>
        </div>     
         <div class="form-group">
            <label for="stuTutorPhone">班导师电话:</label>
            <input type="text" name="stuTutorPhone"  id="stuTutorPhone" >
       		 <br>
        </div>           
      
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button  class="btn btn-primary" style="width: 210px" id="btn">添加学生信息</button>
            </div>
        </div>
     
    </form>
    </div>
</body>
</html>