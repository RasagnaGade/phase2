<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.io.*,java.util.*,java.sql.*"%> 
      <%@page import="java.sql.*,java.util.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align:center">



<form action="reviewdetails.jsp" method="get" >
<p style="border:3px; border-style:solid; border-color:#FF0000; padding: 5em;">
 Registration page<br><br><br>
 Name:        <input type="text" name="name"><br>
 Age:          <input type="text" name="age"><br>
Contacy no.:<input type="text" name="contact_number"><br>
MailId:     <input type="text" name="mail_id"><br><br>
 <button>submit</button>   
    </form>






<%-- <%
String name=request.getParameter("name");
String age=request.getParameter("age");
String contact_number=request.getParameter("contact_number");
String mail_id=request.getParameter("mail_id");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_world", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into register_details(name,age,contact_number,mail_id)values('"+name+"','"+age+"','"+contact_number+"','"+mail_id+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> --%>
<!-- <form action="reviewdetails.jsp" method="get" >
<button>submit</button>  </form> -->

<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/db_world"
user="root" password="root"/>


<%-- 
<sql:update dataSource="${db}" var="count">  
INSERT INTO register_details VALUES ('andy',25,647613,'abd@hbk');  
</sql:update> 
<% 
out.println("<b>inserted success</b><br>");
%>
 --%>

<%-- 
<!-- sql:query tag -->
<sql:query dataSource="${db}" var="rs">
SELECT * from register_details;
</sql:query>
 --%>
</body>
</html>


