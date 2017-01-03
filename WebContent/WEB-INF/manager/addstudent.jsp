<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div class="easyui-tabs" style="width:900px;height:490px;margin-left: 100px;">
    <div title="学生信息添加" style="padding:10px;margin-left: 160px;">
        <div style="margin:5px 0px;"></div>
        <div class="easyui-panel" title="" style="width:500px;padding:18px 90px;">
        <form  action="${pageContext.request.contextPath}/manager/addStudentBase" method="post" id="signupForm"  enctype="multipart/form-data">
            <div style="margin-bottom:1px">
                <div><label for="stuNumber">学号:</label></div>
                <input type="text" name="stuNumber"  id="stuNumber" class="easyui-textbox" style="width:75%;height:22px" />
            </div>
            <div style="margin-bottom:1px">
               <div><label for="stuName">姓名:</label></div>
                <input type="text" name="stuName"  id="stuName" class="easyui-textbox" style="width:75%;height:22px">

            </div>
            <div style="margin-bottom:1px">
                <div><label for="stuPassword">密码:</label></div>
                <input type="text" name="stuPassword"  id="stuPassword" class="easyui-textbox" style="width:75%;height:22px">

            </div>
            <div style="margin-bottom:1px">
                性别:
                <select name="stuSex">
                    <option value="男" selected="selected">男</option>
                    <option value="女">女</option>
                </select>

            </div>
            <div style="margin-bottom:1px">
                <div><label for="stuFloor">楼:</label></div>
                <input type="text" name="stuFloor"  id="stuFloor" class="easyui-textbox" style="width:75%;height:22px">

            </div>
            <div style="margin-bottom:1px">
                <div> <label for="stuStorey">层:</label></div>
                <input type="text" name="stuStorey"  id="stuStorey" class="easyui-textbox" style="width:75%;height:22px">

            </div>

            <div style="margin-bottom:1px">
                <div><label for="stuTutor">班导师:</label></div>
                <input type="text" name="stuTutor"  id="stuTutor" class="easyui-textbox" style="width:75%;height:22px">

            </div>
            
            <div style="margin-bottom:1px">
                <div><label for="stuTutorPhone">班导师电话:</label></div>
                <input type="text" name="stuTutorPhone"  id="stuTutorPhone" class="easyui-textbox" style="width:75%;height:22px">

            </div>
				 <div class="form-group">
					    <label for="exampleInputFile" class="control-label">选择上传图片</label>
					    <input type="file" id="exampleInputFile" name="file" class="form-control">
					  </div>
            <div style="margin-bottom:1px">
                <div style="margin-top: 18px;margin-left: 50px">
                   <button  class="easyui-linkbutton" data-options="">Save</button>
                   <!--  <a href="#" class="easyui-linkbutton" role="button" data-options="iconCls:'icon-save'">Save</a> -->
                </div>
            </div>
 			
        </form>
            </div>
    </div>
    <div title="学籍信息添加" closable="true" style="padding:10px;margin-left: 160px;">
        <div style="margin:1px 0;"></div>
        <div class="easyui-panel" title="" style="width:500px;padding:18px 90px">
            <form  action="${pageContext.request.contextPath}/manager/addStudentRoll" method="post" id="signupForm2"  >
                <div style="margin-bottom:1px">
                <div><label for="stuNumber2">学号:</label></div>
                <input type="text" name="stuNumber2"  id="stuNumber2" class="easyui-textbox" style="width:75%;height:22px" />
            	</div>
                <div style="margin-bottom:1px">
                    <div><label for="rollIdCard">身份证号:</label></div>
                    <input type="text" name="rollIdCard"  id="rollIdCard" class="easyui-textbox" style="width:75%;height:22px" />
                </div>
                <div style="margin-bottom:1px">
                    <div><label for="rollRegistTrationNumber">准考证号:</label></div>
                    <input type="text" name="rollRegistTrationNumber"  id="rollRegistTrationNumber" class="easyui-textbox" style="width:75%;height:22px">

                </div>
                <div style="margin-bottom:1px">
                    <div><label for="rollStartdate">入学年份::</label></div>
                    <input type="text" name="rollStartdate"  id="rollStartdate" class="easyui-textbox" style="width:75%;height:22px">

                </div>

                <div style="margin-bottom:1px">
                    <div><label for="rollEnddate">毕业年份:</label></div>
                    <input type="text" name="rollEnddate"  id="rollEnddate" class="easyui-textbox" style="width:75%;height:22px">

                </div>
                <div style="margin-bottom:1px">
                    <div> <label for="rollUnit">所在单位:</label></div>
                    <input type="text" name="rollUnit"  id="rollUnit" class="easyui-textbox" style="width:75%;height:22px">

                </div>

                <div style="margin-bottom:1px">
                    <div><label for="rollProfession">专业:</label></div>
                    <input type="text" name="rollProfession"  id="rollProfession" class="easyui-textbox" style="width:75%;height:22px">

                </div>
                <div style="margin-bottom:1px">
                    <div><label for="rollNation">民族:</label></div>
                    <input type="text" name="rollNation"  id="rollNation" class="easyui-textbox" style="width:75%;height:22px">
                </div>
                <div style="margin-bottom:1px">
                    <div><label for="rollPoliticalstatus">政治面貌:</label></div>
                    <input type="text" name="rollPoliticalstatus"  id="rollPoliticalstatus" class="easyui-textbox" style="width:75%;height:22px">
                </div>
                <div style="margin-bottom:1px">
                    <div><label for="rollAddress">生源地:</label></div>
                    <input type="text" name="rollAddress"  id="rollAddress" class="easyui-textbox" style="width:75%;height:22px">
                </div>
                <div style="margin-bottom:1px">
                    <div><label for="rollClass">班号:</label></div>
                    <input type="text" name="rollClass"  id="rollClass" class="easyui-textbox" style="width:75%;height:22px">
                </div>
                <div style="margin-bottom:1px">
                    <div><label for="rollMarriage">婚姻状态:</label></div>
                    <input type="text" name="rollMarriage"  id="rollMarriage" class="easyui-textbox" style="width:75%;height:22px">
                </div>

                <div style="margin-bottom:1px">
                    <div style="margin-top: 18px;margin-left: 50px">
                     <button  class="easyui-linkbutton" data-options="">Save</button>
                       <%--  <a href="${pageContext.request.contextPath}/manager/addStudentRoll" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a> --%>
                    </div>
                </div>

            </form>
        </div>
    </div>
    <div title="联系方式添加" iconCls="icon-reload" closable="true" style="padding:10px;margin-left: 160px;">
        <div style="margin:1px 0;"></div>
        <div class="easyui-panel" title="" style="width:500px;padding:18px 90px">
            <form  action="${pageContext.request.contextPath}/manager/addStudentInformation" method="post" id="signupForm3"  >
               <div style="margin-bottom:1px">
                <div><label for="stuNumber3">学号:</label></div>
                <input type="text" name="stuNumber3"  id="stuNumber3" class="easyui-textbox" style="width:75%;height:22px" />
            </div>
                <div style="margin-bottom:1px">
                    <div><label for="informationAddress">地址:</label></div>
                    <input type="text" name="informationAddress"  id="informationAddress" class="easyui-textbox" style="width:75%;height:22px" />
                </div>
                <div style="margin-bottom:1px">
                    <div><label for="informationHomephone">家庭电话:</label></div>
                    <input type="text" name="informationHomephone"  id="informationHomephone" class="easyui-textbox" style="width:75%;height:22px">

                </div>
                <div style="margin-bottom:1px">
                    <div><label for="informationLongphone">长号:</label></div>
                    <input type="text" name="informationLongphone"  id="informationLongphone" class="easyui-textbox" style="width:75%;height:22px">

                </div>

                <div style="margin-bottom:1px">
                    <div><label for="informationShortphone">短号:</label></div>
                    <input type="text" name="informationShortphone"  id="informationShortphone" class="easyui-textbox" style="width:75%;height:22px">

                </div>
                <div style="margin-bottom:1px">
                    <div> <label for="informationEmail">邮箱:</label></div>
                    <input type="text" name="informationEmail"  id="informationEmail" class="easyui-textbox" style="width:75%;height:22px">

                </div>

                <div style="margin-bottom:1px">
                    <div><label for="informationQq">QQ号:</label></div>
                    <input type="text" name="informationQq"  id="informationQq" class="easyui-textbox" style="width:75%;height:22px">

                </div>
                <div style="margin-bottom:1px">
                    <div><label for="informationCode">邮政编码:</label></div>
                    <input type="text" name="informationCode"  id="informationCode" class="easyui-textbox" style="width:75%;height:22px">

                </div>

                <div style="margin-bottom:1px">
                    <div style="margin-top: 18px;margin-left: 50px">
                     <button  class="easyui-linkbutton" data-options="">Save</button>
                        <!-- <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a> -->
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>