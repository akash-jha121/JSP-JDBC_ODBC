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
<c:set var="numval" value="123456.789"/>
<h3>original numeric value:${numval}</h3>
<fmt:formatNumber value="${numval}"
     type="currency"
     pattern="#,###,###"
     maxIntegerDigits="6"
     minIntegerDigits="3"
     maxFractionDigits="2"
     minFractionDigits="1"
     groupingUsed="true"
     var="formattedNumber"
     scope="request"/> 
<h3>Formatted Number: ${formattedNumber}</h3>     
</body>
</html>