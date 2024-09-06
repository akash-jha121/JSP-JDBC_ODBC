<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>for token-tag</title>
</head>
<body>
<h1>
    <c:forTokens  var="i" items="12,24,36,48,60,72,84,96,108,120" delims=",">
          <c:out value="${i}"/><br/>
    </c:forTokens>


</h1>
</body>
</html>