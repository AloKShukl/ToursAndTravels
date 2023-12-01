<%@page import="com.files.entites.Data"%>
<%@page import="com.files.entites.Datadao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Information</title>
<style>
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		background: #ffa500;
	}
</style>
</head>
<body>
	<%
		String email=request.getParameter("email");
		Datadao dao = new Datadao();
		Data user=dao.searchUser(email);
		if(user!=null)
		{
			%>
			
			<div align="center">
			 <h1 style="color:red">User Record</h1>
			 <h2> User Name     : <%=user.getName()%></h2>
	    	 <h2> User Email    : <%=user.getEmail() %></h2>
	     	 <h2> User Phone    : <%=user.getPhone() %></h2>
		     <h2> User Address  : <%=user.getAddress() %></h2> 
	      	 <h2> User Password : <%=user.getPassword() %></h2> 
	      	 </div>
			<% 
		}
		else{
			%>
			Errror	
			<% 
		}
	%>
</body>
</html>