<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script src="<%=path %>/js/jquery-2.1.1.js"></script>
<script src="<%=path %>/js/bootstrap.min.js"></script>
<script src="<%=path %>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script type="text/javascript">
$(document).ready(function(){
        $('#btn').click(function(){
            var field="<p>文件:<input type='file' name='picture'/><input id='btn' type='button' value='删除' onclick='deleteCurrent(this);'/><br></p>"
            $("#files").append(field);
      });        
   });
    function deleteCurrent(a){
        $(a).parent().remove();
}
</script>
<title>Insert title here</title>
</head>
<body>
		
        <form action="UpLoadController.action" method="post" enctype="multipart/form-data">
                             文件:<input type="file" name="picture"/><input id="btn" type="button" value="添加"/><br>
         <div id="files"></div>
         <input type="submit" value="上传"/>
    </form>
</body>
</html>