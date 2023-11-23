<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.sql.*" %>
<%  
    String id = request.getParameter("id");
	String name = request.getParameter("name");
	String fname = request.getParameter("fname");
    String gender = request.getParameter("gender");
    String bday = request.getParameter("bday");
    String course= request.getParameter("course");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address= request.getParameter("address");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sims","root","root");
    String s="insert into student values(?,?,?,?,?,?,?,?,?)";
    PreparedStatement p=cn.prepareStatement(s);  
    
    p.setString(1,id);
    p.setString(2,name);
    p.setString(3,fname);
    p.setString(4,gender);
    p.setString(5,bday);
    p.setString(6,course);
    p.setString(7,email);
    p.setString(8,phone);
    p.setString(9,address);
   

    int i=p.executeUpdate();
    if(i>0)
    {
    	response.sendRedirect("home.jsp"); 
    }
%>
