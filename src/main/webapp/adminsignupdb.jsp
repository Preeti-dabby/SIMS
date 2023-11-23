<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIMS|Insert title here</title>
</head>
<body>
<%
String user_id=request.getParameter("user_id");
String user_name=request.getParameter("user_name");
String user_password=request.getParameter("user_password");


Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sims","root","root");
String s="insert into user values(?,?,?)";
PreparedStatement p=cn.prepareStatement(s);

p.setString(1,user_id);
p.setString(2,user_name);
p.setString(3,user_password);

int i=p.executeUpdate();
if(i>0)
{
	response.sendRedirect("index.jsp"); 
}


%>
</body>
</html>