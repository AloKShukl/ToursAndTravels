<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Invalid Access</title>
</head>
<body>
<%
 	this.log("ERROR : "+exception.getMessage());
%>
<h1>Please LOGIN OR REGISTER FIRST THEN TRY AGAIN</h1> 
<h1>Please Click TO  <a href="Index.jsp">LOGIN</a></h1>
</body>
</html>