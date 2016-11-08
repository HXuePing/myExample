<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<table  width="90%" border="0"  cellpadding="0" cellspacing="0"   class="CContent">
		                    <tr>
		                        <th class="tablestyle_title">个人信息</th>
		                    </tr>
		
		                    <tr>
		                        <td>
		                            <center><p><font style="COLOR: #ff0000; FONT-SIZE: 16pt">敬请完善您的个人联系方式，以便为您提供更好更快的住宿服务，谢谢！</font></p></center>
		                            <fieldset>
		                                <legend>住宿信息</legend>
		                                <table border="0" cellpadding="2" cellspacing="1" class="addtable" width="100%">
		                                    <tr>
		                                    <tr>
		                                        <td align="right" width="18%" class="td">姓名:</td>
		                                        <td width="26%">${roll.student.stuName}</td>
		                                        <td align="right" width="17%" class="td">身份证号:</td>
		                                        <td width="39%">${roll.rollIdCard}</td>
		                                    </tr>   
		                                    <tr>
		                                        <td align="right" width="18%" class="td">准考证号:</td>
		                                        <td width="26%">${roll.rollRegistTrationNumber}</td>
		                                        <td align="right" width="17%" class="td">所在单位:</td>
		                                        <td width="39%">${roll.rollUnit}</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="18%" class="td">入学年份:</td>
		                                        <td width="26%">${roll.rollStartdate}</td>
		                                        <td align="right" width="17%" class="td">毕业年份:</td>
		                                        <td width="39%">${roll.rollEnddate}</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="18%" class="td">专业:</td>
		                                        <td width="26%">${roll.rollProfession}</td>
		                                        <td align="right" width="17%" class="td">民族:</td>
		                                        <td width="39%">${roll.rollNation}</td>
		                                    </tr>
		                                    <tr>
		                                        <td align="right" width="18%" class="td">政治面貌:</td>
		                                        <td width="26%">${roll.rollPoliticalstatus}</td>
		                                        <td align="right" width="17%" class="td">生源地:</td>
		                                        <td width="39%">${roll.rollAddress}</td>
		                                    </tr>
		                                      <tr>
		                                        <td align="right" width="18%" class="td">班号:</td>
		                                        <td width="26%">${roll.rollClass}</td>
		                                        <td align="right" width="17%" class="td">婚姻状态:</td>
		                                        <td width="39%">${roll.rollMarriage}</td>
		                                    </tr>
		                                    </tr>
		                                </table>
		                            </fieldset>
		                            <br>
</td>
</tr>
</table>


</body>
</html>