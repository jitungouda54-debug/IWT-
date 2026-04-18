<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
font-family: Arial;
    background-color: #f2f2f2;
}
form{
width:400px;
margin:auto;
background:white;
border-radius:8px;

}
input[type=number]{
 width: 300px;
    padding: 10px;
    margin: 5px 0;

}
input[type=submit]{
background-color: green;
    color: white;
    cursor: pointer;
    padding: 10px;
    border: none;
    width:50px;
}
input[type=submit]:hover{
background-color:red;
}
</style>
</head>
<body>
  <form action="dis2.jsp">
  Enter the number:<input type="number" name="num">
   <input type="submit" value="Check">
  </form>
</body>
</html>
