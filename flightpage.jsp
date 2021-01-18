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
<title>Flight Details table</title>
</head>
<body>

<h1>welcome to flight details page</h1>

<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/db_world"  
     user="root"  password="root"/>  
 
<!-- sql:update tag to INSERT -->    
<sql:update dataSource="${db}" var="count">  
INSERT INTO flight_details VALUES ('Banglore','Ahmedabad','SpiceJet',2428);  
</sql:update> 

<%-- <!-- sql:update with sq:param tag to DELETE -->  
<c:set var="empid" value="122"/>  
<sql:update dataSource="${db}" var="count">  
DELETE FROM emp WHERE empid = ?  
 <sql:param value="${empid}" />  
</sql:update>  --%>
  
<!-- sql:query  tag --> 
<sql:query dataSource="${db}" var="rs">  
SELECT * FROM flight_details;  
</sql:query>  
   
<table border="2" width="100%">  
<tr>  
<th>Source_city</th>  
<th>Destination_city</th>  
<th>AirLines</th>  
<th>Price_for_single_ticket</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.source}"/></td> 
<td><c:out value="${table.destination}"/></td>  
<td><c:out value="${table.airlines}"/></td>  
<td><c:out value="${table.price}"/><a href="register.jsp">         click to register</a></td>  
</tr>  
</c:forEach>  
</table>  

</body>
</html>