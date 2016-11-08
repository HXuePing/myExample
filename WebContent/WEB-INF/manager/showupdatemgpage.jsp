<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<div class="easyui-tabs" style="width:800px;height:400px;margin-left: 150px;margin-top: 50px;">
    <div title="修改密码" style="padding:10px;margin-left: 160px;margin-top: 30px;">
        <div style="margin:5px 0px;"></div>
        <div class="easyui-panel" title="" style="width:500px;padding:30px 90px;">
        <form  action="${pageContext.request.contextPath}/manager/updateManagerPwd" method="post" id="signupForm"  onsubmit="return checkpwd();">
        <div style="margin-bottom:10px">     		
            <label for="name">用户名:</label>
            <input type="text" name="name" value="${managerNumber}"   id="name" class="easyui-textbox" style="width:75%;height:22px" disabled="disabled">
            <br>
            <span id="span1"></span>
        </div>     
       <!-- <div style="margin-bottom:10px">
            <label for="pwd">旧密码:</label>
            <input type="password" name="pwd"  id="pwd" class="easyui-textbox" style="width:75%;height:22px">
       		 <br>
        </div>  -->      
         <div style="margin-bottom:10px">
            <label for="pwd">新密码:</label>
            <input type="password" name="pwd"  id="pwd" class="easyui-textbox" style="width:75%;height:22px">
       		 <br>
        </div>
          <div style="margin-bottom:10px">
            <label for="pwd2">重复密码</label>
            <input type="password" name="pwd2"  id="pwd2" class="easyui-textbox" style="width:75%;height:22px" onblur="checkpwd()">
       		  <img id="okk" alt="" src="${pageContext.request.contextPath}/static/css/icons/ok.png" style="display: none">
       			 <img id="noo" alt="" src="${pageContext.request.contextPath}/static/css/icons/no.png" style="display: none">
       		 <br>
       		 
        </div>        
        <div style="margin-bottom:10px">
            <div class="col-sm-offset-1 col-sm-10">
                <button  class="btn btn-primary" style="width: 210px" id="btn">确认修改</button>
            </div>
        </div>
     
    </form>
        
        </div>
        </div>
</div>

</body>
