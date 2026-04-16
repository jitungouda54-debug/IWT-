<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String pw = request.getParameter("pw");
    if("admin@gmail.com".equals(email) && "admin".equals(pw)) {
        request.getRequestDispatcher("welcome.jsp").forward(request, response);
    } else {
        out.print("Invalid Credentials");
    }
%>
</body>
</html>