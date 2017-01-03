<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学生</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/base.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>  
	 <!-- 从被装饰页面获取head标签内容 -->
    <decorator:head/> 
</head>
<body>
    <div id="container">
        <div id="header" >
            <div id="logo" ></div><div id="header-text1">学生宿舍管理系统</div>
            <div id="header-right">
                欢迎你， <span class="username"><b>${stu.stuNumber }</b></span>&nbsp;&nbsp;&nbsp;&nbsp;
                [<a href="${pageContext.request.contextPath}/student/LoginIndex" target="">首页</a>]
                 [<a href="${pageContext.request.contextPath}/student/LoginOut">注销退出</a>]&nbsp;&nbsp;
            </div>
        </div>
    <div class="blank"></div>
        <div id="main">
            <div id="left">
                <div id="left-header">
                    <div id="left-header-s1">个人信息</div>
                   
                        <ul class="list">                          
                            <li><a href="${pageContext.request.contextPath}/student/showOneStuBase">查看基本信息</a></li>  
                            <li><a href="${pageContext.request.contextPath}/student/showOneStuRoll">查看学籍信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/student/showOneStuInformation">查看联系方式</a></li>                                                  
                            <li><a href="${pageContext.request.contextPath}/student/updateStuPwdPage">密码修改</a></li>
                        </ul>
              
                </div>
                <div id="left-footer">
                       <div id="left-footer-b1">相关通知</div>
                   
                        <ul class="list">
                            <li><a href="${pageContext.request.contextPath}/student/showviolation">违规信息查询</a> </li>                         
                            <li><a href="${pageContext.request.contextPath}/student/showsuggestionpage">投诉建议</a> </li>
                        	 <li><a href="${pageContext.request.contextPath}/student/showpprove" >打印居住证明</a> </li>
                        </ul>
                 
                </div>
            </div>
            <div id="right">
             	<!-- 被装饰的页面 -->
           	<decorator:body />
            </div>
        </div>
        <div class="blank"></div>
        <div id="footer">
            <div id="footer-aa">
          	  友情链接：<a href="#">五邑大学</a>&nbsp;&nbsp;<a href="#">五邑大学学生处</a>&nbsp;&nbsp;<a>五邑大学学生自律委员会</a><br>
                        五邑大学学生宿舍管理系统@2016
            </div>
        </div>
    </div>
</body>
</html>