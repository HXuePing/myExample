<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table  width="90%" border="0"  cellpadding="0" cellspacing="0"   class="CContent">
		                    <tr>
		                      
		                    </tr>
		
		                    <tr>
		                        <td>
		                            
		                            <fieldset>
		                                <legend>投诉建议</legend>
		                                 <form role="form" action="${pageContext.request.contextPath}/student/addsuggestion" method="post" id="signupForm"  >
        <div class="form-group">       		
            <label for="name">建议人:</label>
            <input type="text" name="suggestionName" value="${s.stuName }"  id="suggestionName" data-container="body" data-toggle="popover">
            <br>
            <span id="span1"></span>
        </div>       
        <div class="form-group">       		
            <label for="name">建议人学号:</label>
            <input type="text" name="suggestionNumber" value="${s.stuNumber}"  id="suggestionNumber" data-container="body" data-toggle="popover" >
            <br>
          
        </div>  
         <div class="form-group">       		
            <label for="name">建议:</label><br>
            <textarea  name="suggestionDecription"  id="suggestionDecription" data-container="body" data-toggle="popover" rows="10" cols="80"  ></textarea>
            <br>
          
        </div>  
      <div class="form-group">       		
            <label for="name">类型:</label>
            <input type="text" name="suggestionType"  id="suggestionType" data-container="body" data-toggle="popover" >
            <br>
           
        </div>  
        <div class="form-group">
            <div class="">
                <button  class="btn btn-primary" style="width: 210px" id="btn">投诉</button>
            </div>
        </div>
     
    </form>
		                                </fieldset>
		                         </td>
		                         
		                  </tr>
   </table>



</body>
</body>
</html>