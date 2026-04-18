<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
font-family:Arial;
background-color:white;
}

form{
text-align:center;
width:100%;
background:light-gray;
padding:8px;
}

input[type=number]{
width:400px;
padding:20px;
margin:5px 0;

}
input[type=radio]{
width:100px;
font-size:22px;

}

input[type=submit]{
background-color:green;
width:80px;
height:40px;

}
input[type=submit]:hover{
background-color:red;
}
</style>
</head>
<body>
<form action="disBm.jsp">
Age:
<input type="number" name="age"><br><br>

Gender:
<input type="radio" name="gender" value="male">Male:
<input type="radio" name="gender" value="female">female:
<br><br>

Height(CM):
<input type="number" name="height" >
<br><br>
Weight(KG):

<input type="number" name="weight"><br><br>

<input type="submit" value="submit">
</form>
</body>
</html>
