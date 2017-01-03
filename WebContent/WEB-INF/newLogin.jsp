<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/theme.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
     <script src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
	 <script src="${pageContext.request.contextPath}/static/js/messages_zh.js"></script> 
	<script src="${pageContext.request.contextPath}/static/js/jquery.metadata.js"></script>
   <script type="text/javascript">
   
	   
   function changeCode(){
       $('#codeImage').attr('src','${pageContext.request.contextPath}/authCode.do?abc='+Math.random());
       /*链接后添加Math.random，确保每次产生新的验证码，避免缓存问题。因为如果每次都是请求同一个页面，此时客户端浏览器会调用缓存中的页面
 	      而如果你每次都附加一个不同随机数给url，那么客户端会以为是新的页面，从而会响应服务器请求*/
   }

   function checkcode(){
	   var flag=false; 

	   /* if(!flag){

		}else{
			return false;
		} */
	   
   
	   var inpCode = $('#authCode').val();

	   var message=$("#name").val();    
       if(message == null || message==""){
    	   $('#name').popover('show');
    	   $('#checktr').popover('hide');
    	   $("#pwd").popover('hide');
    	   $('#authCode').popover('hide');
    	   return false;
       }else{
    	   message=$("#pwd").val();
           if(message == null || message==""){
              	$("#pwd").popover('show');
              	$('#name').popover('hide');
              	 $('#checktr').popover('hide');
              	 $('#authCode').popover('hide');
              	return false;
           }else{
        	   $('#name').popover('hide');
        	   $('#pwd').popover('hide');
               }
         }

       var name =  $('#name').val();
		var pwd= $('#pwd').val();
       
	   $.ajax({
		   url:"/myExample/dorm/logincode",
		   type: "post",
		   success:function(data, status){
			   
			   var Data=eval('(' + data + ')');			
			  if(inpCode==Data.strCode){				 
				  $.ajax({
					   url:"/myExample/dorm/checknamepwd",
					   type: "post",
					   data: {"name": name,"pwd": pwd}, 
					   success:function(data, status){		  
						   var Data=eval('(' + data + ')');							   	
						  if(Data.succ){								 					  
							  document.signupForm.submit();	
						 }else if(!Data.succ){						
							 $('#checktr').popover('show');
							 $('#authCode').popover('hide');
							 changeCode();
							 return false;		
						}
					   				   		  
				   } 
					   });						 	
			 }else{
	
				 $('#authCode').popover('show');
				 $('#checktr').popover('hide');
				 changeCode();
				 return false;		
			}		
			 		   		  
	   }
	   
	   });	 
	   	 return flag;				 

	   }


   $().ready(function() {
	// 在键盘按下并释放及提交后验证提交表单
	  $("#signupForm").validate({
	    rules: {
	      name: {
	        required: true,
	        minlength: 2,
	        maxlength:18
	      },
	      pwd: {
	        required: true,
	        minlength: 5,
	        maxlength:18
	      },	   	 
	    messages: {    
	     	name: {
	        required: "请输入用户名",
	        minlength: "用户名必需由两个字母组成",
	        maxlength:"用户名由18个字母组成"
	      },
	      pwd: {
	        required: "请输入密码",
	        minlength: "密码长度不能小于 5 个字母",
	        maxlength:"用户名由18个字母组成"
	      }
	    }
	    }
	});
   }); 

   function checkForm(){ 
	 var message = '<%=session.getAttribute("message")%>';
       //var message=$("#message").val();
       if((message != null && message!="")){
       	$("#checktrue").popover('show');
      <%--  <%=session.removeAttribute("message")%> --%>
       }
      
      }

  
	            
   </script>
   <style type="text/css">
   .error{
   	color: red;
   }
   </style>
</head>
<body style="background-color:#5CACEE;">
<div class="dialog" >
    <div class="panel panel-default">
       <!-- <p class="panel-heading no-collapse" style="font-size: 17px" ><b>五邑大学&#45;&#45;学生宿舍管理系统</b></p>-->
        <p class="no-collapse panel-heading" style="font-size: 17px" ><b>五邑大学&#45;&#45;学生宿舍管理系统</b></p>
        <input type="hidden" value=""  id="message" name="message" />
        <div class="panel-body">
            <form action="${pageContext.request.contextPath}/dorm/LoginSuccess" method="post" id="signupForm" name="signupForm" role="form" onsubmit="return checkcode();">
                <div class="form-group">
                    <label for="name">用户名：</label>
                   <div id="checktr" name="checktr" data-container="body" data-toggle="popover" data-placement="top"  data-html="true" data-content='<span class="glyphicon glyphicon-exclamation-sign" style="color:red;"></span><span style="color:red;">&nbsp;用户名或者密码错误&nbsp;&nbsp;&nbsp;</span>'>                   
					<!-- 			  -->			
                      </div>                                   
                     <input type="text" name="name"  id="name" class="form-control" data-container="body" data-toggle="popover" data-html="true" data-content='<span class="error">请输入用户名</span>' data-placement="top" >
                    <!--<input type="text" class="form-control span12">-->
                    <span id="span1"></span>
                </div>
                <div class="form-group">
                    <label for="pwd">密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" name="pwd" id="pwd" data-container="body" data-toggle="popover" data-html="true" data-content='<span class="error">请输入密码</span>' data-placement="top" class="form-control form-controlspan12 "  >
                </div>
                <div class="form-group" >    
                	 
                    <input id="authCode" name="authCode" type="text" style="width: 120px;height:40px;float: left "  class="checkCode form-control" data-html="true" placeholder="请输入验证码" data-container="body" data-toggle="popover" data-content='<span class="error">验证码错误</span>' data-placement="bottom"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label><img  src="${pageContext.request.contextPath}/authCode.do" id="codeImage" onclick="changeCode()" title="图片看不清？点击重新得到验证码" style="cursor:pointer;" alt=""/></label>
                    <label ><a onclick="changeCode()">换一张</a></label>
                </div>
                <!-- <a   class="btn btn-primary pull-right">登录</a> -->
                 <button  class="btn btn-primary pull-right" >登录</button>
                <label class="remember-me"><input type="checkbox"> 记住账号名</label>
                <div class="clearfix"></div>
            </form>
        </div>
    </div>
    <p><a href="reset-password.html">忘记密码</a></p>
</div>
</body>
</html>