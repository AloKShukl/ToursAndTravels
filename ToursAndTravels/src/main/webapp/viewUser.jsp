<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
			 <h1 style="color:red">User Record</h1>
			 <h2> User Name     : <%=request.getAttribute("name")%></h2>
	    	 <h2> User Email    : <%=request.getAttribute("email") %></h2>
	     	 <h2> User Phone    : <%=request.getAttribute("phone") %></h2>
		     <h2> User Address  : <%=request.getAttribute("address") %></h2> 
	      	 <h2> User Password : <%=request.getAttribute("pass")%></h2> 
	      	 </div>
</body>
</html>