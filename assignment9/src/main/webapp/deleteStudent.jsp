<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    try {
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://192.168.1.17/cse_db24", "24bcsh02", "24bcsh02");
        PreparedStatement ps = con.prepareStatement("DELETE FROM student01 WHERE id=?");
        ps.setInt(1, Integer.parseInt(id));
        ps.executeUpdate();
        con.close();
        response.sendRedirect("displayStudents.jsp");
    } catch(Exception e) { out.print(e); }
%>
	
</body>
</html>