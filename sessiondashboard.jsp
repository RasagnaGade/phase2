<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
        if (session.getAttribute("name") == null) {
                response.sendRedirect("sessionhandling.jsp?error=1");
        }
%>
<h3><b>Hello  <%= session.getAttribute("name") %>  Welcome to FlyAway</b></h3>
<br>

<a href="searchflights.jsp">Search flights here</a><br><br>
<a href="sessionlogout.jsp">Click here to logout</a>

</body>
</html>