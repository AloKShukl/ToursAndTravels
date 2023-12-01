<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wrong Id Pass.....</title>
<style>
:root{
    --orange:#ffa500;
}

*{
    font-family: 'Nunito', sans-serif;
    margin: 0;padding: 0;
    box-sizing: border-box;
    text-transform: capitalize;
    outline: none;border: none;
    text-decoration: none;
    transition: all .2s linear;
}
.container{
	height: 100vh;
	width: 100vw;
	background: #333;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction:column; 
}
.container h1{
	font-size:3rem;
	text-align: center;
	color: var(--orange);
}
.container p{
	font-size: 2rem;
	text-align: center;
}
.container p>a{
	text-decoration: none;
}
.container p>a:hover{
	color:var(--orange);
	text-decoration: underline;
}

</style>
</head>
<body>
	<div class="container">
	<h1>Password and Re-Password Did not Matched</h1>
	<p><a href="Index.jsp">Click here</a> To TryAgain....</p>
	</div>
</body>
</html>