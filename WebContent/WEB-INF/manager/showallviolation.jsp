<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Basic DataGrid - jQuery EasyUI Demo</title>

	<script>
		var url;
		function deleteUser(){
			var row=$('#dg').datagrid('getSelected');
			if(row){
				url='/myExample/manager/deleteviolation';
				$.messager.confirm("系统提示","您确定要删除这条记录吗?",function(r){
					if(r){
						$.post('user!delete',{delId:row.id},function(result){
							if(result.success){
								$.messager.alert("系统提示","已成功删除这条记录!");
								$("#dg").datagrid("reload");
							}else{
								$.messager.alert("系统提示",result.errorMsg);
							}
						},'json');
					}
				});
			}
		}
		
		function newUser(){
			$("#dlg").dialog('open').dialog('setTitle','添加');
			$('#fm').form('clear');
			url='/myExample/manager/addviolation';
		}
		
		
		function editUser(){
			var row=$('#dg').datagrid('getSelected');
			if(row){
				$("#dlg").dialog('open').dialog('setTitle','编辑用户');
				$("#violationstuNumber").val(row.violationstuNumber);
				$("#violationstuName").val(row.violationstuName);
				$("#violationHappentime").val(row.violationHappentime);
				$("#violationEnteringtime").val(row.violationEnteringtime);
				$("#violationDeregulation").val(row.violationDeregulation);
				$("#violationType").val(row.violationType);
				var violationId=$("#violationId").val(row.violationId);
				url='/myExample/manager/editviolation';
				
			/* 	$.ajax({  
	                method :'post',  
	                url :'/myExample/manager/editviolation',  
	                data:{      
	                    "violationId": row.violationId/* ,
	                    
	                },   
	                dataType : 'json',  
	                success : function(data) {  
	                    if(data){  
	                        $('#goods_tab').datagrid('reload');   
	                    }else{  
	                        $.messager.alert('提示','更改同步状态失败！');  
	                    }  
	                },  
	                error : function() {  
	                    $.messager.alert('警告','更改同步状态异常！');  
	                }  
	            });   */
			}
		}
		
		
		function saveUser(){
			$('#fm').form('submit',{
				url:url,
				
				onSubmit:function(){
					return $(this).form('validate');
				},
				success:function(result){
					//var result=eval('('+result+')');
					if(result.errorMsg){
						$.messager.alert("系统提示",result.errorMsg);
						return;
					}else{
						$.messager.alert("系统提示","保存成功");
						$('#dlg').dialog('close');
						$("#dg").datagrid("reload");
					}
				}
			});
		}
		
		
		function exportUser(){
			window.open('user!export');
		}
	
		function exportUser2(){
			window.open('user!export2');
		}
		
		function openUploadFileDialog(){
			$("#dlg2").dialog('open').dialog('setTitle','批量导入数据');
		}
		
		function downloadTemplate(){
			window.open('template/userExporTemplate.xls');
		}
		
		function uploadFile(){
			$("#uploadForm").form("submit",{
				success:function(result){
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
<div style="margin-left: 190px;margin-top: 50px;">
	<table id="dg" title="违规信息管理" class="easyui-datagrid" style="width:700px;height:365px;"
            url="/myExample/manager/showallviolationlist"
            toolbar="#toolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="true">
        <thead>
            <tr>
            	<th field="violationstuNumber" width="50" >学号</th>
                <th field="violationstuName" width="50">姓名</th>
                <th field="violationHappentime" width="50">违规时间</th>
                <th field="violationEnteringtime" width="50">录入时间</th>
                <th field="violationDeregulation" width="50">详细描述</th>
                <th field="violationType" width="50">违规类型</th>
            </tr>
        </thead>
    </table>
    <div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">添加</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">编辑</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteUser()">删除</a>
    </div>
	
	<div id="dlg" class="easyui-dialog" style="width:400px;height:250px;padding:10px 20px"
            closed="true" buttons="#dlg-buttons">
        <form id="fm"   method="post">
        	<table cellspacing="10px;">
        		<tr>
        			<td>学号</td>
        			<td><input id="violationstuNumber"  name="violationstuNumber" class="easyui-validatebox" required="true" style="width: 200px;"></td>
        		</tr>
        		<tr>
        			<td>姓名</td>
        			<td><input id="violationstuName"  name="violationstuName" class="easyui-validatebox" required="true" style="width: 200px;"></td>
        		</tr>
        		<tr>
        			<td>违规时间</td>
        			<td><input id="violationHappentime"  name="violationHappentime" class="easyui-validatebox"  required="true" style="width: 200px;"></td>
        		</tr>
        		<tr>
        			<td>录入时间</td>
        			<td><input id="violationEnteringtime" name="violationEnteringtime" class="easyui-validatebox" required="true" style="width: 200px;"></td>
        		</tr>
        		<tr>
        			<td>详细描述</td>
        			<td><input id="violationDeregulation" name="violationDeregulation" class="easyui-validatebox" required="true" style="width: 200px;"></td>
        		</tr>
        		<tr>
        			<td>违规类型</td>
        			<td><input id="violationType" name="violationType" class="easyui-validatebox" required="true" style="width: 200px;"></td>
        		</tr>
        	</table>
        </form>
	</div>
    
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">关闭</a>
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
