<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Update record...</title>
<style>
body {
	font-family: Arial, sans-serif;
 	background: url(./images/Lighthouse1.jpg)scroll;
	margin: 0;
	padding: 0;
}

.container {
	width: 400px;
	margin: 0 auto;
	margin-top: 100px;
	background-color: #FFFAF4;
	border: 2px solid #4C4C6D;
	padding: 40px;
	border-radius: 15px;
}

h2 {
	text-align: center;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
}

.form-group input {
	width: 100%;
	padding: 10px;
	font-size: 16px;
	border-radius: 5px;
	border: 1px solid #4C4C6D;
}

.btn {
	width: 100%;
	padding: 10px;
	font-size: 16px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn:hover {
	background-color: #45a049;
}
</style>
</head>
<body>


	<div class="container">
		<h2>UpdateUser</h2>
		<form action="Update.jsp" method="Post">
			<div class="form-group">
				<label for="username">Username:</label> <input type="text" name="name"
					id="username" value="<%=request.getParameter("name") %>" required>
			</div>
			<div class="form-group">
				<label for="email"> Email:</label> <input type="email" id="email" name="email"
				value="<%=request.getParameter("email") %>" required>
			</div>
			<div class="form-group">
				<label for="text">Phone:</label> <input type="text" name="phone"
					id="password"value="<%=request.getParameter("phone") %>" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="text" name="password"
					id="age"value="<%=request.getParameter("pass") %>" required>
			</div>
			<div class="form-group">
				<label for="text">Address:</label> <input type="text" name="address"
					id="password"value="<%=request.getParameter("address") %>" required>
			</div>
			
			<div class="form-group">
				<input type="submit" value="UpdateUser" name="Update" id="user" class="btn">
			</div>
		</form>
	</div>
</body>
</html>