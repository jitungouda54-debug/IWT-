<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Update Student</title></head>
<body>
    <h2>Update Student</h2>
    <%
        String id = request.getParameter("id");
        if(request.getMethod().equalsIgnoreCase("POST")){
            try {
                Class.forName("org.postgresql.Driver");
                Connection con = DriverManager.getConnection("jdbc:postgresql://192.168.1.17/cse_db24", "24bcsa09", "24bcsa09");
                PreparedStatement ps = con.prepareStatement("UPDATE student01 SET name=?, email=?, course=?, age=?, cgpa=? WHERE id=?");
                ps.setString(1, request.getParameter("name"));
                ps.setString(2, request.getParameter("email"));
                ps.setString(3, request.getParameter("course"));
                ps.setInt(4, Integer.parseInt(request.getParameter("age")));
                ps.setFloat(5, Float.parseFloat(request.getParameter("cgpa")));
                ps.setInt(6, Integer.parseInt(id));
                ps.executeUpdate();
                response.sendRedirect("displayStudents.jsp");
            } catch(Exception e) { out.print(e); }
        }

        
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://192.168.1.17/cse_db24", "24bcsa09", "24bcsa09");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM student01 WHERE id=?");
            ps.setInt(1, Integer.parseInt(id));
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
    %>
    <form method="post">
        Name: <input type="text" name="name" value="<%= rs.getString("name") %>"><br>
        Email: <input type="email" name="email" value="<%= rs.getString("email") %>"><br>
        Course: <input type="text" name="course" value="<%= rs.getString("course") %>"><br>
        Age: <input type="number" name="age" value="<%= rs.getInt("age") %>"><br>
        CGPA: <input type="text" name="cgpa" value="<%= rs.getFloat("cgpa") %>"><br>
        <input type="submit" value="Update Record">
    </form>
    <%
            }
            con.close();
        } catch(Exception e) { out.print(e); }
    %>
</body>
</html>
