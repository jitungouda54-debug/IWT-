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

		Connection con = DB1.getConnection();
		String qry = "select * from college_db";
		PreparedStatement ps  = con.prepareStatement(qry);
		
		ResultSet rs =  ps.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="table-stu">
		<table class="display-table" >
				<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Email</td>
				<td>Course</td>
				<td>Age</td>
				<td>CGPA</td>
				<td colspan=3 align="center" >Actions</td>
				</tr>
				<%
					while(rs.next())
					{
						%>
							<tr>
							<td><%=rs.getInt("id") %></td>
							<td><%=rs.getString("name") %></td>
							<td><%=rs.getString("email") %></td>
							<td><%=rs.getString("course") %></td>
							<td><%=rs.getInt("age") %></td>
							<td><%=rs.getFloat("cgpa") %></td>
							<td><button><a href="studentDetails.jsp?sid=<%=rs.getInt("id")%>" >Details</a></button></td>
							<td><button><a href="studentUpdate.jsp" >Update</button></td>
							<td><button><a href="studentDelete.jsp" >Delete</button></td>
							</tr>
						<%
					}
				%>
		</table>
	</div>
</body>
</html>