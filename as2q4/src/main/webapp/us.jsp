<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	}
	catch(Exception e){
		out.println("Fail to initialize mysql JDBC driver: "+e.toString()+"<p>");
		
	}
    String username=request.getParameter("uname");
    String password = request.getParameter("pass");
	Connection conn=null;
	PreparedStatement ps = null;
	ResultSet rs=null;
	try{
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userlogin","root","A4913@jknm");
		out.println("Connection established!!! "+ conn);
		out.println("==================================================");
	   String query = "SELECT * FROM user WHERE username = ? AND password = ?";
       ps = conn.prepareStatement(query);
       ps.setString(1, username);
       ps.setString(2, password);
       rs = ps.executeQuery();

   
       if(rs.next()) {
          
          out.println("<p>Login successful.Welcome, "+username+"!</p>");
       } else {
    	   out.println("<p>Login failed,!</p>");
          
       }
	}
	catch(Exception e){
		out.println("Connection failed!!! "+ e.toString());
		out.println("================================================");
		
	}
	   
		
		
%>		
</body>
</html>