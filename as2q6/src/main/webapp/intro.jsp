<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Request object</h1>
Query String myname=<%=request.getParameter("name") %> myemailid=<%=request.getParameter("uemail") %><br>
Context path <%=request.getContextPath() %><br>
Remote Host <%=request.getRemoteHost() %><br>
<h1>Response object</h1>
Character Encoding Type<%=response.getCharacterEncoding() %><br>
Content Type <%=response.getContentType() %><br>
Locale <%=response.getLocale() %><br>
<h1>Session object</h1>
ID <%=session.getId() %><br>
Creation Time <%=new java.util.Date(session.getCreationTime()) %><br>
Last Access Time <%= new java.util.Date(session.getLastAccessedTime()) %><br>

</body>
</html>