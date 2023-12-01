
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OTP-authentication.....</title>
</head>
<body>
	

	

	<table width="100%" height="500px" border="2" style="Background-color:yellow">
	<form name=form1 action="SuccessfullResetPass.jsp" method="post">
	<tr>
	<td>
	<p>
	<div align="center"><em> Enter OTP :</em>
	<input type="number" name="myotp" >
	<h3>OTP send Successfully to : <%=request.getAttribute("email") %></h3>
	</div>
	</p>
	<p><div align="center">&nbsp;&nbsp;&nbsp;&nbsp;
	<input style="FONT-WEIGHT: bold" type="submit" value="verify">
	&nbsp;&nbsp;&nbsp;<input style="FONT-WEIGHT:bold" type=reset value=Reset>
	</p>
	</div>
	</td>
	</tr>
	<input type="hidden" name="email"  value="<%=request.getAttribute("email") %>">
	<input type="hidden" name="upass"  value="<%=request.getAttribute("pass") %>">
	<input type="hidden" name="otp"  value="<%=request.getAttribute("otp") %>">
	</form>
	</table>
</body>
</html>