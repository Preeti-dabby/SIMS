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
		
		String id=request.getParameter("id");
		String email=request.getParameter("email");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sims","root","root");
		String s="select * from student where stu_id=? and stu_email=?";

		PreparedStatement p=cn.prepareStatement(s);
		
	   
		p.setString(1,id);
		p.setString(2,email);
		
		
		ResultSet r=p.executeQuery();
		if(r.next())
		{
			response.sendRedirect("studenthomepage.jsp");
		}
		else
		{
			response.sendRedirect("studentlogin.jsp");
		}
	%>

</body>
</html>