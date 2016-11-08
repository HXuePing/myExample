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
    </script>
    <style>

    </style>
</head>
<body>
<div style="margin-left: 105px;margin-top: 60px;float:left;">
<table id="dg" title="用户管理" class="easyui-datagrid" style="width:900px;height:365px"
       url="/myExample/manager/listroll"
       toolbar="#toolbar" pagination="true"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr> 
      <!--   <th field="stuName" width="50" >姓名</th> -->
        <th field="rollIdCard" width="50">身份证号</th>
        <th field="rollRegistTrationNumber" width="50">准考证号</th>
        <th field="rollStartdate" width="50">入学年份</th>
        <th field="rollEnddate" width="50">毕业年份</th>
        <th field="rollUnit" width="50">所在单位</th>
        <th field="rollProfession" width="50">专业</th>
		<th field="rollNation" width="50">民族</th>
        <th field="rollPoliticalstatus" width="50">政治面貌</th>
        <th field="rollAddress" width="50">生源地</th>
        <th field="rollClass" width="50">班号</th>
        <th field="rollMarriage" width="50">婚姻状态</th>
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
    <form id="uploadForm" action="user!upload" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>下载模版：</td>
                <td><a href="javascript:void(0)" class="easyui-linkbutton"  onclick="downloadTemplate()">导入模版</a></td>
            </tr>
            <tr>
                <td>上传文件：</td>
                <td><input type="file" name="userUploadFile"></td>
            </tr>
        </table>
    </form>
</div>
<div id="dlg-buttons2">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="uploadFile()">上传</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg2').dialog('close')">关闭</a>
</div>
</div>
</body>
</html>