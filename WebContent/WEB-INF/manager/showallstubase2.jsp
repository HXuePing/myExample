<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script>
    var url;
    function openUploadFileDialog(){
        $("#dlg2").dialog('open').dialog('setTitle','批量导入数据');
    }
    function exportUser(){
        window.open('/myExample/manager/Export');
    }
    function downloadTemplate(){
		window.open('template/xuexi.xls');
	}
    function uploadFile(){
    	
		 $("#uploadForm").form("submit",{
			success:function(result){
				//var result=+result;
			//	var result=eval(result);
			//var result=eval('('+result+')');
				if(result.errorMsg){
					$.messager.alert("系统提示",result.errorMsg);
				}else{
					$.messager.alert("系统提示","上传成功");
					$("#dlg2").dialog("close");
					$("#dg").datagrid("reload");
				}
			}
		}); 
	}
    </script>
</head>
<body>
<div align="center" style="margin-top:15px;">
<form action="${pageContext.request.contextPath}/manager/SelectByCondition" method="post">
条件查询：
<select name="select">
  <option value ="stuNumber" selected="selected">学号</option>
  <option value ="stuName">姓名</option>
</select>
<input type="text" name="condition">
<input type="submit" value="查询">
</form>
</div>
<div style="margin-left: 105px;margin-top:25px;float:left;">
<table id="dg" title="用户管理" class="easyui-datagrid" style="width:800px;height:365px"
       url="/myExample/manager/list"
       toolbar="#toolbar" pagination="true"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="stuNumber" width="50" >学号</th>
        <th field="stuName" width="50">姓名</th>
        <th field="stuSex" width="50">性别</th>
        <th field="stuFloor" width="50">所在楼</th>
        <th field="stuStorey" width="50">所在层</th>
        <th field="stuTutor" width="50">老师</th>
        <th field="stuTutorPhone" width="50">学生</th>
		 <th field="stuImage" width="40">学生照片</th>
    </tr>
   
    </thead>
</table>
<div id="toolbar">
    <!--<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">æ·»å ç¨æ·</a>-->
    <!--<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">ç¼è¾ç¨æ·</a>-->
    <!--<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteUser()">å é¤ç¨æ·</a>-->
      <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-export" plain="true" onclick="exportUser()">导出用户</a>
   <!--<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-export" plain="true" onclick="exportUser2()">用模版导出用户</a>-->
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-import" plain="true" onclick="openUploadFileDialog()">用模版批量导入数据</a>
</div>
<div id="dlg2" class="easyui-dialog" style="width:400px;height:180px;padding:10px 20px"
     closed="true" buttons="#dlg-buttons2">
    <form id="uploadForm" action="${pageContext.request.contextPath}/manager/upload" method="post" enctype="multipart/form-data">
        <table>
           <!--  <tr>
                <td>下载模版：</td>
                <td><a href="javascript:void(0)" class="easyui-linkbutton"  onclick="downloadTemplate()">导入模版</a></td>
            </tr> -->
            <tr>
                <td>上传文件：</td>
                <td><input type="file" name="uploadfile"></td>
            </tr>
        </table>
    </form>
   
</div>
 <div id="dlg-buttons2">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="uploadFile()" >上传</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg2').dialog('close')">关闭</a>
</div>
</div>
</body>
</html>