<%@page import="com.files.entites.Datadao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Status ....</title>
</head>
<body>

<jsp:useBean id="user" class="com.files.entites.Data"/>
<jsp:setProperty property="*" name="user"/>

<%
	Datadao db = new Datadao();
	int status=db.updaterecord(user);
	
	if(status==1)
	{
%>
	<h1>Record Updated Successfully!</h1>
<%		
	}
	else
	{
%>
	<h1>User Does not exists</h1>
<%
	}
%>
</body>
</html>