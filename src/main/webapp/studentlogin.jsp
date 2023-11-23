<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIMS|Student Login</title>
<link rel="stylesheet" href ="style.css">
</head>
<body>
<%@ include file="title.jsp" %>

	<h1 id="second">Student Login Here</h1>
	<form action="studenthomepage.jsp">
		<label for="id"><b>Student Id</b></label>
		<input type="text" id="id" name="myid" placeholder="Enter Your Id..." required>
		<label for="email"><b>Email</b></label>
		<input type="email" id="email" name="email" placeholder="Enter Your Email..."required>
		<button type="submit">Login</button>
		
	</form>
	
</body>
</html>