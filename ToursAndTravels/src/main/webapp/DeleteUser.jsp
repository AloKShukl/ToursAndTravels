<%@page import="com.files.entites.Datadao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete User</title>

<style>
	:root {
            --orange: #ffa500;
        }

        * {
            font-family: 'Nunito', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-transform: capitalize;
            text-decoration: none;
            transition: all .2s linear;
        }

        html {
            font-size: 62.5%;
            overflow-x: hidden;
            scroll-padding-top: 6rem;
            scroll-behavior: smooth;
        }
        body{
        	background: var(--orange);
        	display: flex;
        	align-content: center;
        	justify-content: center;
        	flex-direction: column;
        }
        
        .heading{
        	text-align: center;
        	font-size: 4rem;
        	color:#333;
        	padding: 4rem;
        }
        p{
        	text-align: center;
        	font-size: 3rem;
        	color:#333;
        	padding: 5rem;
        }
        
        p a{
                	color:#333;
        
        }
        
        p a:hover{
        	text-decoration: underline;
        }

</style>
</head>
<body>
<%
	String email= request.getParameter("email");
	Datadao dao= new Datadao();
	int status=dao.DeleteUser(email);
	if(status==1)
	{
%>
		<h2 class=heading>Record Deleted Successfully..</h2> <br>
		<p>For Admin Page <a href="AdminProfile.jsp">Click Here...</a> </p>
<%		
	}
	else
	{
%>
	<h2 class=heading>Id Does't Exists..</h2> <br>
		<p>For Admin Page <a href="AdminProfile.jsp">Click Here...</a> </p>
	
<% 		
	}
%>
</body>
</html>