<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/db_world"
user="root" password="root"/>

 <%-- <!-- sql:update tag to INSERT -->    
<sql:update dataSource="${db}" var="count">  
INSERT INTO emp VALUES (124,'andy', 55000);  
</sql:update> 
<% 
out.println("<b>inserted success</b><br>");
%> 
 --%>
 
<!-- sql:query tag -->
<sql:query dataSource="${db}" var="rs">
SELECT * from emp;
</sql:query>

<table border="2" width="100%">  
<tr>  
<th>Employee ID</th>  
<th>Employee Name</th>  
<th>Salary</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.empid}"/><a href="register.jsp">         click here to register</a></td>  
<td><c:out value="${table.empname}"/></td>  
<td><c:out value="${table.salary}"/></td>   
</tr>  
</c:forEach>  
</table>  
 
</body>
</html>






