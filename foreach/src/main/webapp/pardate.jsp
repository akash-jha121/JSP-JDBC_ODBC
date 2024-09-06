<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>parsed date:</h3>
<c:set var="date" value="08-23-2024"/>
<fmt:parseDate value="${date}" var="parsedDate" pattern="MM-dd-yyyy"/> 
<p><c:out value="${parsedDate}"/></p>
</body>
</html>