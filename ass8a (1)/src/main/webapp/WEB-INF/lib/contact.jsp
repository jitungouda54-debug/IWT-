<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact</title>
</head>
<body>
	<form action="displayContact.jsp" method="post">
			    
			    <h1>Contact</h1>
			    
			    Name: <input type="text" name="name"><br>
			    Mobile: <input type="text" name="mobile"><br>
			    Email: <input type="email" name="email"><br>
			    Gender: <input type="radio" name="gender" value="Male"> Male 
			            <input type="radio" name="gender" value="Female"> Female<br>
			    DOB: <input type="date" name="dob"><br>
			    <input type="submit" value="submit">
			</form>
</body>
</html>