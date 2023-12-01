<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.HashMap"%>
    <%@page import="java.util.Map"%>
    <%@page import="java.util.ArrayList"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OTP verify</title>
</head>
<body>
<%-- <%
	Map<String,String> list=(HashMap<String,String>)(request.getAttribute("alist"));
	out.print(list);
	session.setAttribute("params", list);
	session.setAttribute("otp", request.getAttribute("otp"));
	
	out.print(session.getAttribute("otp"));
%> --%>
	<table width="100%" height="364" border="1">
	<form name=form1 action="RegisterServlet" method="post">
	<tr>
	<td>
	<p>
	<input type="hidden" name="name"  value="<%=request.getParameter("name") %>">
	<input type="hidden" name="email"  value="<%=request.getParameter("email") %>">
	<input type="hidden" name="phone"  value="<%=request.getParameter("phone") %>">
	<input type="hidden" name="address"  value="<%=request.getParameter("address") %>">
	<input type="hidden" name="pass"  value="<%=request.getParameter("pass") %>">
	<input type="hidden" name="pass1"  value="<%=request.getParameter("pass1") %>">
	<input type="hidden" name="otp"  value="<%=request.getAttribute("otp") %>">
	<div align="center"><em> Enter OTP :</em>
	<input type="number" name="myotp" >
	</div></p>
	
	<p><div align="center">&nbsp;&nbsp;&nbsp;&nbsp;
	<input style="FONT-WEIGHT: bold" type="submit" value="verify">
	&nbsp;&nbsp;&nbsp;<input style="FONT-WEIGHT:bold" type=reset value=Reset>
	</p>
	</div>
	</td>
	</tr>
	</form>
	</table>
</body>
</html>