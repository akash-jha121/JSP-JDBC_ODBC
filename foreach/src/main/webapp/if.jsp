<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="ISO-8859-1">
<title>If-tag</title>
<style>
body{
  background-color:black;
  color:blue;
  text-align:center;
  font-size:24px;
  }

</style>
</head>
<body>
  <h1>
   <c:set var="vote" value="23"/>
   <c:if test="${vote>18 }">
      Eligible for vote!!
      </c:if>
  
  </h1>
  
</body>
</html>