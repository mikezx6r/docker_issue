<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
	<%
	String username = (String) request.getAttribute("username");
	if (username == null) username = "";
	
	String email = (String) request.getAttribute("email");
	if (email == null) email = "";
	
	// Display error messages
	String error = (String) request.getAttribute("error");
	if (error != null && !error.isEmpty()) {
	%>
	<p><strong style="color: red;">Errors:</strong></p>
	<p style="color: red;"><%= error %></p>
	<% } %>
	<form name="input" action="Register" method="post">
		Username: <input type="text" name="username" value="<%= username %>"><br>
		Email: <input type="text" name="email" value="<%= email %>"><br>
		Password: <input type="password" name="password"><br>
		<input type="submit" value="Register">
	</form>
</body>
</html>