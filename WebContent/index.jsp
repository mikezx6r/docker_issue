<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log in</title>
</head>
<body>
	<%
	// Display error messages
	String error = (String) request.getAttribute("error");
	if (error != null && !error.isEmpty()) {
	%>
	<p><strong style="color: red;">Errors:</strong></p>
	<p style="color: red;"><%= error %></p>
	<% } %>
	
	<form name="input" action="Login" method="post">
		Username: <input type="text" name="username"><br>
		Password: <input type="password" name="password"><br>
		<input type="submit" value="Login"> <a href="register.jsp">Register</a>
	</form>
</body>
</html>