<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
--------fn:contains-----
<c:set var="String" value="welcome to javatpoint"/>
<c:if test="${fn:contains(String, 'javatpoint')}">
<p>found javatpoint string</p>
</c:if>
<c:if test="${fn:contains(String, 'javatpoint')}">
<p>found javatpoint string</p>
</c:if>
<br>


---------------fn:containsIgnoreCase----------
<c:set var="String" value="welcome to javatpoint"/>
<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
<p>found javatpoint string</p>
</c:if>
<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
<p>found javatpoint string</p>
</c:if>
<br>

--------------fn:endsWith------------
<c:set var="String" value="welcome to programming"/>
<c:if test="${fn:endsWith(String, 'programming')}">
<p>string ends with programming</p>
</c:if>
<c:if test="${fn:endsWith(String, 'jsp')}">
<p> string ends with jsp</p>
</c:if>
<br>


-------fn:escapeXml--------
<c:set var="string1" value="it is first string."/>
<c:set var="string2" value="it is <xyz> second string.</xyz>"/>
<p>with escapeXml() Function:</p>
<p>string-1:${fn:escapeXml(string1) }</p>
<p>string-2:${fn:escapeXml(string2) }</p>
<p>without escapeXml function:</p>
<p>string-1:$(string1)</p>
<p>string-1:$(string1)</p>
<br>

-------fn:indexOf--------
<c:set var="string1" value="it is first string."/>
<c:set var="string2" value="it is <xyz> second string.</xyz>"/>
<p>Index-1: ${fn:indexOf{string1, "first"} }</p>
<p>Index-1: ${fn:indexOf{string2, "second"} }</p>
<br>


<!-- fn:length -->
--------------------fn:length------------------------
<c:set var="str1" value="This is first string"/>  
<c:set var="str2" value="Hello"/>  
Length of the String-1 is: ${fn:length(str1)}<br>  
Length of the String-2 is: ${fn:length(str2)}  
<br>


<!-- fn:replace -->
----------------------fn:replace---------------------
<c:set var="author" value="Ramesh Kumar"/>  
<c:set var="string" value="pqr xyz abc PQR"/>  
${fn:replace(author, "Ramesh", "Suresh")} 
<br> 
${fn:replace(string, "pqr", "hello")}  

</body>
</html>