<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
----remove attribute---
<c:set var="income" scope="session" value="${4000*4} }"/>
<p>before remove value is : <c:out value="${income} }"/></p>
<c:remove var="income"/>
<p>after remove value is: <c:out value="${income} }"/></p>
<br><br>

-----catch attribute----
<c:catch var="catchtheException">
<% int x=2/0;%>
 </c:catch>
 <c:if test="${catchtheException!=null}"> 
 <p>the type of exception is:${ctchtheException} <br/> 
 there is an exception: ${catchtheException.message}</p>
 </c:if>
 <br><br>
 
 -------choose, when, otherwise attribute--
 <c:set var="income" scope="session" value="${4000*4 }"/>
 <p>your income is : <c:out value="${income} }"/></p>
 <c:choose>
 <c:when test="${income<= 1000 }">
 income is not good.
 </c:when>
 <c:when test="${income > 1000 }">
 income is very good.
</c:when>
<c:otherwise>
income is undetermined...
</c:otherwise>
</c:choose>
<br><br>


----foreach attribute---
<c:forEach var="j" begin="1" end="3">
item<c:out value="${j}"/><p>
</p>
</c:forEach>


</body>
</html>