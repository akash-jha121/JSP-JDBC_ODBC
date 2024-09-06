<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC>
<html>

<head>
<meta charset="ISO-8859-1">
<title>set tag</title>
<style>
   body{
     background-color:teal;
     color:red;
     text-align:center;
     font-size:20px;
   }
</style>
</head>
<body >
<h1>
<c:set var="name" value="Akash"/>
My name is
<c:out value="${name}"/>
<br>
<c:remove var="name"/>
My name is
<c:out value="${name}"/>
<br>


</h1>
</body>
</html>