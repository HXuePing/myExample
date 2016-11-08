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
       url="/myExample/manager/listinfor"
       toolbar="#toolbar" pagination="true"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="stuName" width="50" >姓名</th>
        <th field="informationAddress" width="50">地址</th>
        <th field="informationHomephone" width="50">家庭电话</th>
        <th field="informationLongphone" width="50">长号</th>
        <th field="informationShortphone" width="50">短号</th>
        <th field="informationEmail" width="50">邮箱</th>
        <th field="informationQq" width="50">QQ号</th>
		<th field="informationCode" width="50">邮政编码</th>
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