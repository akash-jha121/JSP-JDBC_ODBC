<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>c:for each tag example</title>
</head>
<body>

<c:forEach var="i" begin="100" end="200" step="2"><br>
code <c:out value="${i}"/>
</c:forEach>
</body>
</html>