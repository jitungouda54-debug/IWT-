<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Student Details</title></head>
<body>
    <h2>Student Full Details</h2>
    <%
        String id = request.getParameter("id");
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://192.168.1.17/cse_db24", "24bcsa09", "24bcsa09");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM student01 WHERE id=?");
            ps.setInt(1, Integer.parseInt(id));
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
    %>
                <p><strong>ID:</strong> <%= rs.getInt("id") %></p>
                <p><strong>Name:</strong> <%= rs.getString("name") %></p>
                <p><strong>Email:</strong> <%= rs.getString("email") %></p>
                <p><strong>Course:</strong> <%= rs.getString("course") %></p>
                <p><strong>Age:</strong> <%= rs.getInt("age") %></p>
                <p><strong>CGPA:</strong> <%= rs.getFloat("cgpa") %></p>
    <%
            }
            con.close();
        } catch(Exception e) { out.print(e); }
    %>
</body>
</html>
