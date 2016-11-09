<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script type="text/javascript">
       
       

		$(function(){
			  var cur = new Date();
			  var y = cur.getFullYear();
		       var m = cur.getMonth()+1;
		       var d = cur.getDate(); 
		       $("#text").html(y+" 年"+m+"月"+d+"日");   

				$("#btn1").click(function(){
					 var tit = document.title;

			            document.title = "";

			            btn1.style.display = "none";
			         /*    btn2.style.display="none"; */
			            text1.style.display="none";
			            window.print();

			            document.title = tit;

			            btn1.style.display = "";
			          /*   btn2.style.display=""; */
			            text1.style.display="";
			          

					});


				$("#btn2").click(function(){
					
			         
					});		
		       
			});
        
       </script>
       
        </head>
<body>
 <table     class="CContent">	                	
		                    <tr>
		                        <td>		                            
		                                                     
<table id="table1"  class="addtable">
    <tr>
        <td>
            <script type="text/javascript">
                AC_AX_RunContent( 'id','WebBrowser','classid','CLSID:8856F961-340A-11D0-A96B-00C04FD705A2','height','0','width','0','viewastext','VIEWASTEXT' ); //end AC code
            </script><noscript><OBJECT   id="WebBrowser"   classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"   height="0"   width="0"   VIEWASTEXT></OBJECT></noscript>
            <input type="submit" onclick="Print()" value="打印"  id="btn1"/>
          <!--   <input type="button" value="返回" onclick="ret(0)" id="btn2" />  -->
            <br />
            <div style="font-size:16px;" id="text1">
                打印说明：<br />
                1、居住证明由学生本人用A4纸打印，送所在学院学生工作办公室审批盖章即可。<br />
                2、请检查学生个人信息是否正确，如有错误请联系宿管科修改。<br />
            </div>
            <div class="div_print1">
                <!--startprint-->
                <div class="div_print">
                    <div align="center">
                        <div style="height:15px;"></div>
                        <table width="85%" border="0" cellspacing="0" cellpadding="10">
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                            <tr>
                                <td colspan="3" align="center" style="font-size:20px;font-weight:bold;">
                                    <div class="tabletitle"><FONT  style="FONT-SIZE:28pt;filter:alpha(opacity=100,style=3);WIDTH:100%; LINE-HEIGHT:150%;FONT-FAMILY:黑体">五邑大学学生居住证明</FONT></div></td>
                            </tr>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                            <tr>
                                <td colspan="3"><FONT  style="FONT-SIZE:20pt;filter:alpha(opacity=100,style=3);WIDTH:100%; LINE-HEIGHT:150%">&nbsp;&nbsp;&nbsp;&nbsp;现有黄雪萍，女，学号3213002307，身份证号：440923199404020806，是五邑大学计算机学院在校生，现住在江门市东成村22号五邑大学学生宿舍29栋203。</FONT></td>
                            </tr>
                            <tr>
                                <td>
                                    <FONT  style="FONT-SIZE:20pt;filter:alpha(opacity=100,style=3);WIDTH:100%; LINE-HEIGHT:150%">&nbsp;&nbsp;&nbsp;&nbsp;特此证明。</FONT>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <FONT  style="FONT-SIZE:20pt;filter:alpha(opacity=100,style=3);WIDTH:100%; LINE-HEIGHT:150%">
                                        五邑大学计算机学院					</FONT>
                                </td>
                            </tr>
                          <tr>
                                <td align="right">
                                    <FONT  id="text" style="FONT-SIZE:20pt;filter:alpha(opacity=100,style=3);WIDTH:100%; LINE-HEIGHT:150%">
                                        					</FONT>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <FONT  style="FONT-SIZE:20pt;filter:alpha(opacity=100,style=3);WIDTH:100%; LINE-HEIGHT:150%"></FONT>
                                </td>
                            </tr>
                        </table>
                    </div>
                        </div>
                        </div>
                        </td>
                        </tr>
  </table> 
 </td></tr></table>
  <br>
</body>
</html>