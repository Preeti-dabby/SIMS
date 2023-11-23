<%@page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>SIMS|Update Page</title>
    
           
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sims", "root", "root");
    String myid = request.getParameter("myid");
    String s = "SELECT * FROM student WHERE stu_id=?";
    PreparedStatement p = cn.prepareStatement(s);
    p.setString(1, myid);
    ResultSet r = p.executeQuery();
    
    while (r.next()) {
        String id = r.getString("stu_id");
        String name = r.getString("stu_name");
        String fname = r.getString("stu_fname");
        String gender = r.getString("stu_gender");
        
        String bday = r.getString("stu_bday");
        
        String course = r.getString("stu_course");
        String email = r.getString("stu_email");
        String phone = r.getString("stu_phone_no");
        String address = r.getString("stu_address");
        
%>
<%@ include file ="title.jsp" %>
<h1 id="second">Edit Student Details</h1>
    <form action="updatestudentdb.jsp?myid=<%= r.getString("stu_id") %>" method="post">
        <label for="id">UID:</label>
        <input type="text" id="id" name="id" value="<%= id %>" placeholder="Enter  student id..." required>
        <i class="fa fa-user" ></i>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= name %>" placeholder="Enter student  name..." required>
        <i class="fa fa-user" ></i>
        <label for="email">father's Name:</label>
         <input type="text" id="fname" name="fname" value="<%= fname %>" placeholder="Enter father name..." required>
         <i class="fa fa-bars" ></i>
          <label for="gender">Gender:</label>
          <select name ="gender" id ="gender"  required>
          <option value ="<%= "male"%>">male<option>
		<option value="<%= "female"%>">female<option>
		<option value ="<%= "other"%>">other<option>
		</select>
		<i class="fa fa-bars" ></i>
		<label for= "dob">D.O.B</label>
		<input type ="date" id ="dob" name ="bday"  value ="<%=bday %>" placeholder ="enter student date of birth" required>
		
		
		<i class="fa fa-bars" ></i>
		<label for ="course">Course:</label>
		<select name ="course" id ="course">
		<option value ="<%= "B.Tech"%>">B.Tech.<option>
		<option value ="<%= "M.Tech"%>">M.Tech.<option>
		<option value ="<%= "Phd."%>">Phd.<option>
		<option value ="<%= "other"%>">OTHER<option>
		</select>
		
		
		
          
         <i class="fa fa-evelope" ></i>
        <label for="email">Email:</label>
       <input type="email" id="email" name="email" value="<%= email %>" placeholder="Enter student Email..."required>
       <i class="fa fa-phone" ></i>
        <label for="phone">Mobile No. :</label>
        <input type="tel" id="phone" name="phone" value="<%= phone %>" placeholder="Enter student Phone no...." pattern="[0-9]{10}"required>
         <label for="address">address:</label>
        <input type="text" id="" name="address" value="<%= address %>" placeholder="Enter student address..." required>
       
        <button type="submit">Submit</button><br><br>
    </form>
    

<% } %>
</body>
</html>
