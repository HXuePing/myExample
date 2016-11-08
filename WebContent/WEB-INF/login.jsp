<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/messages_zh.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.metadata.js"></script>
	
<!--   <style>
        #center{
           position: absolute;
            top: 50%;
            -webkit-transform: translateY(-50%);
            -moz-transform:  translateY(-50%);
            -ms-transform:  translateY(-50%);
            -o-transform:  translateY(-50%);
            transform:  translateY(-50%);
        }
   </style>-->
    <style>
        .top{
            margin-top: 150px;
            margin-left: 550px;
        }
        .error{
		color:red;
	}
    </style>
    <script>
   
        function changeCode(){
            $('#codeImage').attr('src','${pageContext.request.contextPath}/authCode.do?abc='+Math.random());
            /*链接后添加Math.random，确保每次产生新的验证码，避免缓存问题。因为如果每次都是请求同一个页面，此时客户端浏览器会调用缓存中的页面
      	      而如果你每次都附加一个不同随机数给url，那么客户端会以为是新的页面，从而会响应服务器请求*/
        }

        $(document).ready(function(){       	             
        	 $("#signupForm").validate({            	 
        		  errorPlacement: function(error, element) {
        				error.appendTo(element.parent()); 
        			},
        			errorElement: "span", 
        		    rules: {        		 
        		    	name: {
            		        required: true,
            		        minlength: 2,
            		        maxlength:32
            		      },
        		    	pwd: {
        		        required: true,
        		        minlength: 6,
        		        maxlength:32
        		      },
        		     authCode:"required",        		      
        		    messages: {
        		    	name: {
            		        required: "用户名不能为空",
            		        minlength: "用户名长度不能小于 2 个字母",
            		        maxlength: "用户名长度不能大于32 个字母"
            		      },       		         		    
        		    	pwd: {
        		        required: "密码不能为空",
        		        minlength: "密码长度不能小于 5 个字母",
        		        maxlength: "密码长度不能大于32 个字母"
        		      },
        		      authCode:"验证码不能为空"       		     
        		    }       	
        }
    });

        	/*   jQuery.validator.addMethod("checkCode", function(value, element) {
        		 alert("aaa");
            	 var strCode = "${sessionScope.strCode}";
            	 alert(strCode);
            	 var inpCode = $('#authCode').val();
            	 alert(inpCode);
                 if(strCode==""||strCode == null){
                     changeCode();
                     //用后台的字符与页面输入的验证码进行比较
                 }else if(inpCode == strCode){
                     return true;
                 }else{
                     return false;
                 }
            }, "验证码错误");   */
         /* $("button").live("click",function(){
             alert("bbb");
         	
				$.ajax({
					type:"POST",
					data:{"name":$("#name").val(),
						"pwd":$("#pwd").val()
						},
					url:"/myExample/manager/LoginTo",				
					dataType:"json",
					success:function(json){
						alert("aaa");
						return false;
					
						
						}
				});
         });     */
      	    
 });

        function checkForm(){
            var flag=true;
            var message=$("#message1").val();
            if((message != null && message!="")){
            	$("[data-toggle='popover']").popover('show');
    
             flag=false;
            }
            return flag;
           }
       
    </script>
</head>
<body onload="checkForm()">	
	<div id="center" class="top">
    <form role="form" action="${pageContext.request.contextPath}/dorm/LoginSuccess" method="post" id="signupForm"  >
        <div class="form-group">       		
            <label for="name">用户名:</label>
            <input type="hidden" name="message1" id="message1"  value="${message1}">       
            <input type="text" name="name"  id="name" data-container="body" data-toggle="popover" data-content="${message1}">
            <br>
            <span id="span1"></span>
        </div>       
        <div class="form-group">
            <label for="pwd">密&nbsp;&nbsp;&nbsp;码:</label>
            <input type="password" name="pwd"  id="pwd" >
       		 <br>
        </div>
        
        
        <div class="form-group" >  
      		 <input id="authCode" name="authCode" type="text" style="width: 100px;height:40px; "  class="checkCode" placeholder="请输入验证码"/>
      		&nbsp;&nbsp;&nbsp;
        	<label><img  src="${pageContext.request.contextPath}/authCode.do" id="codeImage" onclick="changeCode()" title="图片看不清？点击重新得到验证码" style="cursor:pointer;" alt=""/></label>
        	<label><a onclick="changeCode()">换一张</a></label>
        	<br>
        	<span class="error">${message}</span>
    	</div>
             
        <div class="form-group">
            <div >
                <div class="checkbox">
                    <label>
                        <input type="checkbox">记住密码
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="">
                <button  class="btn btn-primary" style="width: 210px" id="btn">登录</button>
            </div>
        </div>
     
    </form>
</div>

</body>
</html>