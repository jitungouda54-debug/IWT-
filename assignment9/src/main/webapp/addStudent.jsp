<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>Add New Student</h2>
    <form method="post">
        Name: <input type="text" name="name"><br>
        Email: <input type="email" name="email"><br>
        Course: <input type="text" name="course"><br>
        Age: <input type="number" name="age"><br>
        CGPA: <input type="text" name="cgpa"><br>
        <input type="submit" value="Save Student">
    </form>

    <%
        if(request.getMethod().equalsIgnoreCase("POST")){
            try {
            	String driver = "org.postgresql.Driver";
    			String url = "jdbc:postgresql://192.168.1.17/cse_db24";
    			String username = "24bcsa09";
    			String password = "24bcsa09";
    			Class.forName(driver);
    			Connection con = DriverManager.getConnection(url, username, password);
    			if(con!=null)
    				System.out.println("Connection established successfully..");
                PreparedStatement ps = con.prepareStatement("INSERT INTO student01(name, email, course, age, cgpa) VALUES(?,?,?,?,?)");
                ps.setString(1, request.getParameter("name"));
                ps.setString(2, request.getParameter("email"));
                ps.setString(3, request.getParameter("course"));
                ps.setInt(4, Integer.parseInt(request.getParameter("age")));
                ps.setFloat(5, Float.parseFloat(request.getParameter("cgpa")));
                ps.executeUpdate();
                out.print("Student added successfully!");
            } 
            
            catch(Exception e) { 
            	out.print(e);
            	}
        }
    %>
</body>
</html>