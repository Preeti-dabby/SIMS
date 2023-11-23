<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIMS|sign up</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@ include file="title.jsp" %>
<h1 id="second">Enter Details Here</h1>
	<form action="adminsignupdb.jsp">
		<label for="userid"><b>User Id</b></label>
		<input type="text" id="id" name="user_id" placeholder="Enter id..." required>
		<label for="username"><b>User Name</b></label>
		<input type="text" id="username" name="user_name" placeholder="Enter username..." required>
		<label for="password"><b>Password</b></label>
		<input type="password" id="password" name="user_password" placeholder="Enter password..." required>
		
		<button type="submit">Submit</button>
		have an account?<a href="adminlogin.jsp" class="signup">Sign in</a>
	</form>


</body>
</html>