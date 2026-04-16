<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>q4</title>
</head>
<body>
	<center>
		<form>
		    Weight(in kg): <input type="number" name="w"><br>
		    Height(in cm): <input type="number" name="h"><br>
		    Age: <input type="number" name="a"><br>
		    Gender: 
			    <input type="radio" name="g" value="m">M 
			    <input type="radio" name="g" value="f">F<br><br>
			    <input type="submit"><br>
		</form>
	</center>
<%
    if(request.getParameter("w") != null) {
        double w = Double.parseDouble(request.getParameter("w"));
        double h = Double.parseDouble(request.getParameter("h"));
        int a = Integer.parseInt(request.getParameter("a"));
        String g = request.getParameter("g");
        double bmr = (10 * w) + (6.25 * h) - (5 * a) + (g.equals("m") ? 5 : -161);
        out.print(" BMR : " + bmr + " cals/day");
    }
%>
</body>
</html>

