<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="InvalidAccess.jsp" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

        *::selection {
            background: var(--orange);
            color: #fff;
        }

        html {
            font-size: 60%;
            overflow-x: hidden;
            scroll-padding-top: 6rem;
            scroll-behavior: smooth;
        }

        .container {
            width: 100%;
            background: rgba(0, 0, 0, .8);
            height: 100vh;
        }

        .nav {
            width: 100%;
            background: var(--orange);
        }

        .nav h1 {
            font-size: 2rem;
            margin: 0 2rem;
            padding: 1.5rem;
            color: #333;
        }

        .nav h1 a {
            color: #333;
        }

        .nav h1 a:hover,
        nav h1:hover {
            color: #666;
            text-decoration: underline;
            font-size: 3rem;
        }

        .Profile {
            /* width: 100%; */
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
        }

        .Profile .img img {
            width: 100vw;
            height: 40rem;
        }

        .user {
            width: 37rem;
            height: 37rem;
            border: 1px solid #ffa500;
            top: 8rem;
            border-radius: 100%;
            position: absolute;
            box-shadow: 0rem 5rem 5rem rgba(0, 0, 0, 9);
        }
        .user img{
        	object-fit:contain;
        	 width: 37rem;
            height: 37rem;
           
            border-radius: 100%;
           
            box-shadow: 0rem 5rem 5rem rgba(0, 0, 0, 9);
        }

        .Profile .welcome {
            width: 100%;
            margin: 3rem;
        }

        .Profile .welcome h1 {
            font-size: 2rem;
            color: var(--orange);
        }

        .Profile .btn {
            padding: .8em 1em;
            margin: 2rem 4rem;
            width: 24%;
            height: 5vh;
            display: inline-block;
            background: var(--orange);
            border: .2rem solid var(--orange);
            cursor: pointer;
            font-size: 2rem;
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .Profile .btn a {
            color: #fff;
        }

        .btn:hover {
            background: rgba(255, 165, 0, .2);
            color: var(--orange);
        }

        @media (max-width:1200px) {
            .Profile .btn {
                margin: 1rem 1rem;
                padding: 0;
            }
        }
        @media (max-width:760px) {
            html {
                font-size: 40%;
            }
            .Profile .btn {
                width: 50%;
                font-size: 1.8rem;
            }
            .container{
                height: 100vh;
            }

           
        }
        @media (max-width:450px) {
            .user{
                height: 25rem;
                width: 20rem;
                left: 2rem;
                top: 15rem;
            }
            .user img{
                height: 25rem;
                width: 20rem;
                left: 2rem;
             }
        }
       
    </style>
</head>

<body>
<%
		String name= (String)request.getAttribute("name");
		if(name.isBlank())
		{
		}
		else
		{
%> 
    <div class="container">
        <nav class="nav">
            <h1><i class="fa fa-sign-out"></i><a href="Index.jsp">Logout</a></h1>
        </nav>
        <div class="Profile">
            <div class="img">
                <img src="./Images/Profile Tour.jpg" alt="img">
            </div>
            <div class="user">
                 <img src="./ProfileImages/<%=request.getAttribute("imageFileName")%>"alt="img">
                <!--  <img src="./ProfileImages/DSC_0008.JPG"alt="img"> --> 
            </div>
            <div class="welcome">
                <h1>Welcome User : <%=request.getAttribute("name")%></h1>
               	<h1><input type="hidden" name="email" value="<%=request.getParameter("inemail")%>"></h1>
               	<% 
               		String email=request.getParameter("inemail");
               	%>
            </div>
            <div class="btn"><a href="Changeprofile.jsp?email=<%=email%>">Change Profile</a></div>
            <div class="btn"><a href="Forget.jsp">Change Password</a></div>
            <div class="btn"><a href="">Previous Trips</a></div>
            <div class="btn"><a href="AboutUser.jsp?email=<%=email%>">About</a></div>
            <div class="btn"><a href="Gallery.jsp">Gallery</a></div>
            <div class="btn"><a href="">Contact Us</a></div>
        </div>
    </div>
    	<% 
		}
	%>
</body>

</html>