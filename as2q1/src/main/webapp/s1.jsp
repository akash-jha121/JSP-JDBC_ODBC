<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %>    

<%
 String name=request.getParameter("name");
 session.setAttribute("name",name);
 session.setAttribute("starttime",new Date());
 Date starttime=(Date) session.getAttribute("starttime");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  .par1{
     position:absolute;
     top:15px;
     right:15px;
  }

</style>
</head>
<body>
<div class="par1">start time:<%=starttime %></div>
<% 
 out.println("hello "+name );
%>
<form action="s2.jsp" method="post"><br>
 <input type="submit" value="logout">

</form>
</body>
</html>