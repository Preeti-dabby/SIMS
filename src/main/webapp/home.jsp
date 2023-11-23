<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> SIMS|Admin Home Page</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="title.jsp" %>
	<h1 id="second">WELCOME TO SIMS</h1>
	<a href="index.jsp" id="hometag" ><i class="fa fa-home" >back to home</i></a>
	<form action="#">
	  <label for="home"></label>
	  <a href ="addstudent.jsp" ><button id="home" type ="button">Add New Student's Information</button></a>
	 <a href ="viewdata.jsp" > <button id="home" type ="button">View Student List  </button> </a>
	
	</form>
</body>
</html>