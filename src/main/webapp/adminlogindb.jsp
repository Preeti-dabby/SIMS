<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIMS|LOGIN PAGE</title>
</head>
<body>
<%
		
		String user_id=request.getParameter("user_id");
		String user_password=request.getParameter("user_password");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sims","root","root");
		String s="select * from user where user_id=? and user_password=?";

		PreparedStatement p=cn.prepareStatement(s);
		
	   
		p.setString(1,user_id);
		p.setString(2,user_password);
		
		
		ResultSet r=p.executeQuery();
		if(r.next())
		{
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("usersignup.jsp");
		}
	%>

</body>
</html>