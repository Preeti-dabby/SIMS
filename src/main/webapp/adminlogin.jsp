<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIMS|Login Page</title>
<link rel="stylesheet" href ="style.css">
</head>
<body>
<%@ include file="title.jsp" %>
<h1 id="second">Login Here</h1>
	<form action="adminlogindb.jsp">
		<label for="user_id"><b>User Id</b></label>
		<input type="text" id="user_id" name="user_id" placeholder="Enter your id..." required>
		<label for="password"><b>Password</b></label>
		<input type="password" id="password" name="user_password" placeholder="Enter your password..."required>
		<button type="submit">Login</button>
		Don't have an account?<a href="adminsignup.jsp" class="signup">Sign up here</a>
	</form>

</body>
</html>