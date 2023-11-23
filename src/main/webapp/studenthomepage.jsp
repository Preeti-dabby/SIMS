<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>SIMS|print</title>
<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #dfe8f2;
			background-color:rgb(230, 235, 231);
			padding: 20px;
		}
		
		.home-link {
      margin-top: 20px;
      font-size: 1rem;
      color: black;
      text-decoration: none;
      border-bottom: 1px dotted #4caf50;
      transition: all 0.3s ease-in-out;
    }
    
    .home-link:hover {
      opacity: 0.7;
    }
		
		
		.student {
			background-color: #fff;
			padding: 100px;
			max-width: 400px;
			margin: 0 auto;
			box-shadow: 0 0 10px rgba(0,0,0,0.2);
			border-radius: 5px;
		}
		h1 {
			text-align: center;
			margin-top: -100px;
			margin-bottom: 20px;
			color: #8cd439;
			color: #063970;
			display: block;
			width: 100%;
			
			
		}
		
		table {
			width: 100%;
			border-collapse: collapse;
			margin-bottom: 20px;
		}
		th, td {
			padding: 10px;
			text-align: left;
			border-bottom: 1px solid #ddd;
		}
		th {
			background-color: #f2f2f2;
			font-weight: bold;
		}
		.company {
			margin-top: 10px;
			font-size: 12px;
			color: #999;
			text-align: center;
		}
	
		button[type="button"] {
			background-color: #4CAF50;
			background-color: #063970;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			margin-right: 20px
			position: fixed;
			top: 20px;
			right: 50px;
			width: 100%;
			max-width: 200px;
		}
		button[type="button"]:hover {
			background-color: #063978;
		}
		@media print {
			body * {
				visibility: hidden;
			}
			.student, .student * {
				visibility: visible;
			}
			.ticket {
				position: absolute;
				left: 0;
				top: 0;
				width: 100%;
			}
		}
		
	</style>

</head>
<body>
<%
String myid = request.getParameter("myid");
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sims","root","root");
String s="select * from student where stu_id =?";
PreparedStatement p=cn.prepareStatement(s);
p.setString(1, myid);
ResultSet r=p.executeQuery();
if(r.next())
{
	%>
	<!--  </table><br><br>-->

	<div class="student">
	
		<h1>student Information</h1>
		<table>
			<tr>
				<th>Student Id:</th>
				<td><%=r.getString("stu_id") %></td>
			</tr>
			<tr>
				<th>Student Name:</th>
				<td><%=r.getString("stu_name") %></td>
			</tr>
			<tr>
				<th>Father's Name:</th>
				<td><%=r.getString("stu_fname") %></td>
			</tr>
			<tr>
				<th>Gender:</th>
				<td><%=r.getString("stu_gender") %></td>
			</tr>
			<tr>
				<th>D.O.B:</th>
				<td><%=r.getString("stu_bday") %></td>
			</tr>
			<tr>
				<th>Course:</th>
				<td><%=r.getString("stu_course") %></td>
			</tr>
			<tr>
				<th>Email:</th>
				<td><%=r.getString("stu_email") %></td>
			</tr>
			
			<tr>
				<th>Contact:</th>
				<td><%=r.getString("stu_phone_no") %></td>
			</tr>
			<tr>
				<th>Address:</th>
				<td><%=r.getString("stu_address") %></td>
			</tr>
		</table>
	
	<%
}
else
{
	response.sendRedirect("index.jsp");
}
%>

			<button type="button" onclick="window.print()">Print </button>
	<a href="index.jsp" class="home-link">Back To home Page</a>


</body>
</html>