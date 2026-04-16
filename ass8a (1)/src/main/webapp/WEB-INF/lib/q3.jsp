<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>q3</title>
</head>
<body>
	<form>
		Enter Number: 
		<input type="number" name="num">
		<input type="submit">
	</form>
<%
    String s = request.getParameter("num");
    if(s != null) {
        int n = Integer.parseInt(s);
        int count = 0;
        for(int i = 1; i <= n; i++)
        	if(n % i == 0)
        		count++;
        out.print(n + (count == 2 ? " is Prime" : " is not Prime"));
    }
%>
</body>
</html>