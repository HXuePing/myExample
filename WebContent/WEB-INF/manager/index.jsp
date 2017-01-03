<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/base2.css" />
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/easyui-lang-zh_CN.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>   
  
</head>
<body>
    <div id="container">
        <div id="header" >
            <div id="logo" ></div><div id="header-text1">学生宿舍管理系统</div>
            <div id="header-right">
                欢迎你， <span class="username"><b>${manager.managerNumber}</b></span>&nbsp;&nbsp;&nbsp;&nbsp;
                [<a href="${pageContext.request.contextPath}/manager/LoginIndex" >首页</a>]
                 [<a href="${pageContext.request.contextPath}/manager/LoginOut">注销退出</a>]&nbsp;&nbsp;
            </div>
        </div>
    <div class="blank"></div>
        <div id="main">
            <div id="left">
                <div id="left-header">
                    <div id="left-header-s1">学生信息管理</div>
                     <div id="left-header-s2">
                          <ul class="list">
                            <li><a href="${pageContext.request.contextPath}/manager/addStudentBasePage">添加学生信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/manager/showAllStuBase">查看基本信息</a></li>  
                            <li><a href="${pageContext.request.contextPath}/manager/showAllStuRoll">查看学籍信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/manager/showAllStuInformation">查看联系方式</a></li>                                              
                            <li><a href="${pageContext.request.contextPath}/manager/updateManagerPwdPage">密码修改</a></li>
                        </ul>
                    </div>
                </div>
                <div id="left-footer">
                       <div id="left-footer-b1">相关业务处理</div>
                    <div id="left-footer-b2">
                       <ul class="list">
                            <li><a href="${pageContext.request.contextPath}/manager/showallviolation">查看违规信息</a> </li>
                            <li><a href="${pageContext.request.contextPath}/manager/showallsuggestion">查看投诉建议</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="right">
            
            <div id="right-text1"></div>    
           
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
  
               

