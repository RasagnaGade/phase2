<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- ----------fmt:formatNumber tag-
<h3>formatting of numbers</h3>
<c:set var="Amount"  value="9850.14115"/>
<p>
formatted number-1:
<fmt:formatNumber value="${Amount} " type="currency"/></p>
<br> --%>

----fmt:bundle tag with java class Simple.java----
<fmt:bundle basename="sample.phase2.Simple" prefix="colour.">
<fmt:message key="Voilet"/><br/>
<fmt:message key="Indigo"/><br/>
<fmt:message key="Blue"/><br/>
</fmt:bundle>
<br>




</body>
</html>