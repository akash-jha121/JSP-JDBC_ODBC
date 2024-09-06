<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ taglib uri="http://java.sun.c/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="refresh" content="1">
</head>
<body>
  <h2>Date format:</h2>
  <c:set var="now" value="<%= new java.util.Date()%>"/>
 <h2>Formatted date: <mark><fmt:formatDate type="date" value="${now}"/></mark></h2>
   <h2>Formatted time:<mark><fmt:formatDate type="time" value="${now}"/></mark></h2>
   <p>Formatted date and time: <fmt:formatDate type="both" value="${now}"/></p>
    <p>short format: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}"/></p>
  <p>medium format: <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now}"/></p>
  <p>long format: <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}"/></p>
  <h3>pattern1 (yyyy-MM-dd): <fmt:formatDate pattern="yyyy-MM-dd" value="${now}"/></h3>
   <h3>pattern2 (dd-MM-yyyy): <fmt:formatDate pattern="dd-MM-yyyy" value="${now}"/></h3>
     <h3>pattern3 (MM-dd-yyyy): <fmt:formatDate pattern="MM-dd-yyyy" value="${now}"/></h3>
      <h3>pattern4 (yyyy-dd-MM): <fmt:formatDate pattern="yyyy-dd-MM" value="${now}"/></h3>
       
</body>
</html>