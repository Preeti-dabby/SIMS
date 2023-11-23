<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIMS|Add new student data</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="title.jsp" %>
<h1 ID="second">Enter New Student Detials</h1>
<form action="addstudentdb.jsp" name ="f1"  onsubmit ="return validation()">
<label for="id"><b>Id</b></label>
	    <input type="text" id="id" name="id" placeholder  ="Enter Student id" required>
	    
	    <i class="fa fa-user" ></i>
		<label for="name"><b>Name</b></label><br>
		<input type="text" id="name" name="name"  placeholder="Enter Student name..." required >
		
		<i class="fa fa-user" ></i>
		<label for="fname"><b> Father's Name</b></label>
		<input type="text" id="fname" name="fname" placeholder="Enter Student father's name..." required>
		
		<i class="fa fa-bars" ></i>
		<label for="gender">Gender:</label>
		<select name ="gender" id ="gender"  >
		<option value ="">select gender<option>
		<option value ="male">male<option>
		<option value="female">female<option>
		<option value ="other">other<option>
		</select>
		
		<i class="fa fa-bars" ></i>
		<label for ="dob">D.O.B</label>
		<input type ="date" id ="dob" name ="bday"  min="1990-01-01" max="2011-01-01" placeholder ="enter Student date of birth" required>
		
		<i class="fa fa-bars" ></i>
		<label for ="course">Course:</label>
		<select name ="course" id ="course" >
		<option value="">Select Course<option>
		<option value ="B.Tech.">B.Tech.<option>
		<option value ="M.Tech">M.Tech.<option>
		<option value ="Phd.">Phd.<option>
		<option value ="other">other<option>
		</select>
		
		
		<i class="fa fa-envelope" ></i>
		<label for="email"><b>Email</b></label>
		 <input type="email" id="email" name="email" placeholder="Enter Student Email..."required>
		<i class="fa fa-phone" ></i>
		<label for="phone"><b>Contact No.</b></label>
		<input type="tel" id="phone" name="phone" placeholder="Mobile No." pattern ="[0-9]{10}" required>
		<label for ="address"><b>Address</b></label>
		<textarea  id="address" name="address" placeholder="Enter Student Address..."required></textarea>
		<button type="submit">Submit</button><br><br>
		
	</form>
	
	
	
	<script>
    function validation()
    {

     
    	var gender = document.f1.gender.value;
    	var course = document.f1.course.value;
    
             if(gender.length=="" && course.length=="" ) { 
                alert("!!! gender and course fields are empty");  
                document.f1.gender.focus();
                document.f1.course.focus();   

                return false;
            }
            
             else  {
            
                if(gender.length=="" ) {  
                    alert("!!!gender feild is empty");  
                    document.f1.gender.focus();
                     return false;
                }
                if(course.length=="")
                	{
                	alert("!!!course feild is empty");
                	document.f1.course.focus();
                	return false;
                	}
               
      }
    }
            
    </script>

</body>
</html>