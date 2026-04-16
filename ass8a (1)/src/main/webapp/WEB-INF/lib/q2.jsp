<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>q2</title>
</head>
<body>
	<center>
	<div>
			<form action="display_employee.jsp" method="post">
			    
			    <h1>Employee details</h1>
			    ID: <input type="text" name="id"><br>
			    Name: <input type="text" name="name"><br>
			    Mobile: <input type="text" name="mobile"><br>
			    Email: <input type="email" name="email"><br>
			    Gender: <input type="radio" name="gender" value="Male"> Male 
			            <input type="radio" name="gender" value="Female"> Female<br>
			    DOB: <input type="date" name="dob"><br>
			    Address: <textarea name="address"></textarea><br>
			    Country: <select name="country">
			        <option value="India">India</option>
			        <option value="Other">Other</option>
			    </select><br>
			    Languages: 
			    <input type="checkbox" name="lang" value="Java"> Java
			    <input type="checkbox" name="lang" value="Python"> Python
			    <input type="checkbox" name="lang" value="C++"> C++<br>
			    <input type="submit">
			</form>
		</div>
	</center>		
</body>
</html>