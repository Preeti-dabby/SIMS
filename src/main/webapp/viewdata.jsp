<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>SIMS|viewdata</title>
  
    <style>
        /* CSS styles for the table and other elements */
        
       table {
            width: 100%;
            border-collapse: collapse;
        }
        th{
            border: 1px solid black;
            padding: 8px;
            font-family:  sans-serif;
            
        }
         td {
            border: 1px solid black;
            padding: 8px;
            
        }
        th {
            background-color: black;
            color:white;
             background-color:#669999
        }
        header {
            background-color:  #5f9ea0;
            padding: 20px;
            text-align: center;
        }
        footer {
            background-color: #5f9ea0;
            padding: 10px;
        }
        h1 {
        color:#063970;
            
        }
        #second{
			text-align: center;
		    
			margin-bottom: 0px;
			color: #063970;
			display: block;
			width: 100%;
		}
		#mainheading{
		background-color:rgb(166, 171, 179);
		text-align: center;
		color:#063970;
		margin-top:0px;
		width:100%;
		margin-bottom:20px;
		font-size:50px;
		height:auto;
		border:3px solid black;
			}
		img {
  border:         0;
  margin-top:     1px;
  margin-bottom:  1px;
  margin-left:    1px;
  margin-right:   30px;
  
  
}
    </style>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
</head>
<body>

    <%@include file ="title.jsp" %>
    <a href="home.jsp"><button type="submit"><i class="fa fa-home" ></i>Back To Home</button></a>
    <h1 id="second">Student List</h1>
     <form method="post" id ="viewdataform" >    
        <table>
            <thead>
                <tr class="highlight">
                    <th>Student Id</th>
                    <th>Student Name</th>
                    <th>Father's Name</th>
                    <th>Gender</th>
                    <th>D.O.B.</th>             
                    <th>Course</th>
                    <th> Email</th>
                    <th>Contact No.</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sims","root","root");
                String s="select * from student";
                PreparedStatement p=cn.prepareStatement(s);
                ResultSet r=p.executeQuery();
                while(r.next()) {
                %>
                    <tr>
                        <td class="odd"><%= r.getString("stu_id") %></td>
                        <td class="even"><%= r.getString("stu_name") %></td>
                        <td class="odd"><%= r.getString("stu_fname") %></td>
                        <td class="even"><%= r.getString("stu_gender") %></td>
                        <td class="odd"><%= r.getString("stu_bday") %></td>
                         <td class="even"><%= r.getString("stu_course") %></td>
                        <td class="odd"><%= r.getString("stu_email") %></td>
                        <td class="even"><%= r.getString("stu_phone_no") %></td>
                        <td class="odd"><%= r.getString("stu_address") %></td>
                        
                        <td class="even">
        <a href="deletestudent.jsp?myid=<%= r.getString("stu_id") %>"><button type="button">Delete</button></a>
        <a href="editstudent.jsp?myid=<%= r.getString("stu_id") %>"><button type="button">Edit</button></a>
        <!--  <a href="print_data.jsp?myid=<%= r.getString("stu_id") %>"><button type="button">view</button></a>-->
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>

   </form>


    <footer>
         
    </footer>

</body>
</html>
