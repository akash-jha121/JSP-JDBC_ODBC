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
<c:set var="numString" value="1,234.567"/>
<h2>Original number(String format): ${numString}</h2>
<fmt:parseNumber var="parsedNumber"
              value="${numString}"
              type="currency"
              parseLocale="en_US"
              integerOnly="true"
              pattern="#,###.##"
              scope="request"/>
<h3>Parsed Number(only integer):${parsedNumber}</h3>              
</body>
</html>