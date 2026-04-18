<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.* , utility.DB1"%>
<%@ include file="navbar.jsp" %>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return; 
    }
%>

<%

	String message = "";
	int sid = Integer.parseInt(request.getParameter("sid"));
	Connection con = DB1.getConnection();
	String qry = "select * from college_db where id = ?";
	PreparedStatement ps  = con.prepareStatement(qry);
	ps.setInt(1, sid);
	ResultSet rs =  ps.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Detail</title>
</head>
<body>
	<div>
		<div>
			<span>Name: </span><%=rs.getString("name") %>
		</div>
				<div>
			<span>Name: </span><%=rs.getString("email") %>
		</div>
				<div>
			<span>Name: </span><%=rs.getString("course") %>
		</div>
				<div>
			<span>Age: </span><%=rs.getInt("age") %>
		</div> 
		<div>
			<span>Cgpa: </span><%=rs.getFloat("cgpa") %>
		</div>
	</div>
</body>
</html>