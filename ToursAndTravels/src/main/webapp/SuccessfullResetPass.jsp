<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.files.entites.Datadao"%>
    <%@page import="com.files.entites.Data"%>
    <jsp:useBean id="user" class="com.files.entites.Data"/>
	<jsp:setProperty property="*" name="user"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            outline: none;
            border: none;
            text-decoration: none;
            transition: all .2s linear;
        }

        html {
            font-size: 62.5%;
            overflow-x: hidden;
            scroll-padding-top: 6rem;
            scroll-behavior: smooth;
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
            width: 100%;
            background-color: #333;
        }

        .container>h1 {
            font-size: -webkit-xxx-large;
            color: var(--orange);
            text-align: center;
        }

        .container>h2 {
            font-size: xx-large;
            color: var(--orange);

        }

        .container>p>a {
            text-decoration: none;
            font-size: 2rem;
            color: white;
        }

        .container>p{
            font-size: 2rem;
            color: #ffa500;
        }

        .container>p>a:hover {
            text-decoration: underline;
            color: blue;
        }

        @media (max-width:768px) {
            .container>h1 {
                font-size: 2rem;
                
            }
            .container>p{
                font-size: 1rem;
            }
            .container>p>a {
                font-size: 1rem;
            }
        }

        @media (max-width:450px) {
            .container>h1 {
                font-size: 1.5rem;
                color: var(--orange);
            }

            .container>p>a {
                font-size: .9rem;
            }
        }
    </style>
</head>
<body>

<%
	String otp=request.getParameter("otp");
	String myotp=request.getParameter("myotp");
	String upass=request.getParameter("upass");
	String email=request.getParameter("email");
	Datadao dao= new Datadao();
	if(otp.equals(myotp))
	{
		int status=dao.UpdatePass(upass,email);
		if(status==1)
		{
%>
	 <div class="container">
        <h1 class="heading"> Password Changed Successfully </h1> <br>
        <h1 class="heading"> Login With your new password </h1> <br>
        <p>for Login Page : <a href="Index.jsp">Click Here </a></p>
    </div>
<%
		}
		else
		{
%>
		<p> Failed to Change Password!</p>
<%			
		}
	}
	else
	{
%>
	<p>Wrong OTP!</p>
<%		
	}
%>
</body>
</html>