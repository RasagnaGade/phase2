<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Review details for confirmation</h3><br>



 <%= request.getParameter("name")%><br>
 <%= request.getParameter("age")%><br>
 <%= request.getParameter("contact_number")%><br>
 <%= request.getParameter("mail_id")%><br>
    
    
    
   <%--  <%
String name=request.getParameter("name");
String age=request.getParameter("age");
String contact_number=request.getParameter("contact_number");
String mail_id=request.getParameter("mail_id");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_world", "root", "root");
Statement st=conn.createStatement();


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
    %>
   <form action="confirmation.jsp" method="post">
     --%>
     <form action="confirmation.jsp" method="post">
    <button>Proceed for payment</button>
    
    </form>
   
</body>
</html>