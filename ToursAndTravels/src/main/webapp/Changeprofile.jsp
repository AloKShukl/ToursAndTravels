<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProfileUpdate</title>
</head>
<body>	
	<h1 style="color:red" align="center">UPLOAD PROFILE PICTURE</h1>
	<div align="center">
	<form action="ProfileUpdateServlet" method="post" enctype="multipart/form-data">
		Select Image : <input type="file" name="image">
					   <input type="hidden" name="email" value="<%=request.getParameter("email")%>">
		<input type="submit" value="Upload Image">
	</form>
	</div>
</body>
</html>