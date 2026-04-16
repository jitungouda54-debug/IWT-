<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Display Students</title></head>
<body>
    <h2>Student List</h2>
    <table border="1">
        <tr>
            <th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Age</th><th>Actions</th>
        </tr>
        <%
            try {
                Class.forName("org.postgresql.Driver");
                Connection con = DriverManager.getConnection("jdbc:postgresql://192.168.1.17/cse_db24", "24bcsh02", "24bcsh02");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM student01");
                while(rs.next()){
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("course") %></td>
            <td><%= rs.getInt("age") %></td>
            <td>
                <a href="studentDetails.jsp?id=<%= rs.getInt("id") %>">Details</a> |
                <a href="updateStudent.jsp?id=<%= rs.getInt("id") %>">Update</a> |
                <a href="deleteStudent.jsp?id=<%= rs.getInt("id") %>" onclick="return confirm('Delete this record?')">Delete</a>
            </td>
        </tr>
        <% 
                }
                con.close();
            } catch(Exception e) { out.print(e); }
        %>
    </table>
</body>
</html>
