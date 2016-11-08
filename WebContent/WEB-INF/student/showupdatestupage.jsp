<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
</style>
<script type="text/javascript">
	function checkpwd(){
		var flag=false;
		
		var pwd=$("#pwd").val();
		var pwd2=$("#pwd2").val();
		if(pwd==pwd2 && pwd!="" && pwd2!=""){
			//$("#okk").css("display", "block");  
			$("#okk").show(); 
			$("#noo").hide();
			flag=true;
		}else{
			$("#noo").show(); 
			$("#okk").hide(); 
		}
		
		return flag;
	}
</script>
</head>
<body>

<table  width="80%" border="0"  cellpadding="0" cellspacing="0"   class="CContent">
		                    <tr>
		                        <th class="tablestyle_title">修改个人密码</th>
		                    </tr>
		
		                    <tr>
		                        <td>
		                            <center><p><font style="COLOR: #ff0000; FONT-SIZE: 16pt">敬请完善您的个人联系方式，以便为您提供更好更快的住宿服务，谢谢！</font></p></center>
		                            <fieldset>
		                                <legend>个人信息</legend>
		                                 <form  action="${pageContext.request.contextPath}/student/updateStuPwd" method="post" id="signupForm"  onsubmit="return checkpwd();">
      <div style="margin-left: 220px;">
        <div style="margin-bottom:2px">     		
            <div><label for="name">用户名:</label></div>
            <input type="text" name="name" value="${stu.stuNumber}"  id="name" class="easyui-textbox" style="width:35%;height:22px" disabled="disabled">
            <br>
            <span id="span1"></span>
        </div>       
        <div style="margin-bottom:2px">      		
            <div><label for="name">姓名:</label></div>
            <input type="text" name="stuName" value="${stu.stuName}"  id="stuName" class="easyui-textbox" style="width:35%;height:22px" disabled="disabled">
            <br>
            <span id="span1"></span>
        </div > 
       <!--   <div style="margin-bottom:2px">  
             <div><label for="oldpwd">旧密码:</label></div>
            <input type="password" name="oldpwd"  id="oldpwd" class="easyui-textbox" style="width:35%;height:22px">
       		 <br>
        </div> -->
         <div style="margin-bottom:2px">  
           <div> <label for="pwd">新密码:</label></div>
            <input type="password" name="pwd"  id="pwd" class="easyui-textbox" style="width:35%;height:22px">
       		 <br>
        </div>
         <div style="margin-bottom:2px">  
            <div> <label for="pwd2">确认密码</label></div>
            <input type="password" name="pwd2"  id="pwd2" class="easyui-textbox" style="width:35%;height:22px" onblur="checkpwd()">
       		 <img id="okk" alt="" src="${pageContext.request.contextPath}/static/css/icons/ok.png" style="display: none">
       		  <img id="noo" alt="" src="${pageContext.request.contextPath}/static/css/icons/no.png" style="display: none">
       		 <br>
        </div>
        
        <div style="margin-bottom:2px">  
            <div class="col-sm-offset-1 col-sm-10">
                <button  class="btn btn-primary" style="width: 210px" id="btn">确认修改</button>
            </div>
        </div>
     </div>
    </form>
		                                </fieldset>
		                         </td>
		                         
		                  </tr>
   </table>


</body>
</html>