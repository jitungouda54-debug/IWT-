<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.* , utility.DB1"%>
 
<% 
	
	Connection con = DB1.getConnection();
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if(username != null && password != null) {
	    String sql = "SELECT id, username FROM users WHERE username=? AND password=?";
	    PreparedStatement ps = con.prepareStatement(sql);
	    ps.setString(1, username);
	    ps.setString(2, password); 
	    ResultSet rs = ps.executeQuery();
	    if(rs.next()) {
	        session.setAttribute("user", rs.getString("username"));
	        response.sendRedirect("addStudent.jsp");
	        return;
	    } else {
	        request.setAttribute("error", "Invalid username or password");
	    }
	    rs.close();
	    ps.close();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="login.css">
<title>Login</title>
</head>
<body>
	<div class="login-div">
		<form method="post" action="login.jsp">
			<div class="field">
				<span>Username:</span><input type="text" placeholder="username" name="username">
			</div>
			<div class="field">
				<span>Password:</span><input type="text" placeholder="password" name="password">
			</div>
			
			<input type="submit" value="Login" name="submit" >
		</form>
	</div>
</body>
</html>