<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>when&otherwise-tag</title>
<style>
  
    .grade-A { 
    color: teal; 
    background-color:black;
    }
    .grade-B {
     color: blue;
     background-color:red ;}
    .grade-C { color: green; }
    .grade-D { color: purple; }
    .grade-E { color: magenta; }
    


</style>
</head>
<body>
 <h1>
    <c:set var="marks" value="84"/>
    <c:choose>
       <c:when test="${marks>90}"> <span class="grade-A">A GRADE</span></c:when>
        <c:when test="${marks>80}"><span class="grade-B">B GRADE</span></c:when>
         <c:when test="${marks>70}"><span class="grade-C">C GRADE</span></c:when>
          <c:when test="${marks>60}"><span class="grade-D">D GRADE</span></c:when>
           <c:when test="${marks>50}"><span class="grade-E">E GRADE</span></c:when>
           <c:otherwise>FAILED</c:otherwise>
    </c:choose>
 </h1>

</body>
</html>