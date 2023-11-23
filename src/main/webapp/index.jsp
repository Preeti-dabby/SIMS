<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIMS|Index Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@include file="title.jsp" %>
<h1 id="second">WELCOME TO SIMS</h1>
	<form action="#">
	  <label for="home"></label>
	  <a href ="adminlogin.jsp" ><button id="home" type ="button">Admin Module</button></a>
	 <a href ="studentlogin.jsp" > <button id="home" type ="button">Student Module </button> </a>
	
	</form>
</body>
</html>