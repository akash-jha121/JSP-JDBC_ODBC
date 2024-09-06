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

	Connection conn=null;
	PreparedStatement ps = null;
	
	try{
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","A4913@jknm");
		out.println("Connection established!!! "+ conn);
		out.println("==================================================");
		 String regisno = request.getParameter("regisno");
		  String sql = "SELECT name, subject, marks FROM Students WHERE regisno = ?";
          ps = conn.prepareStatement(sql);
          ps.setString(1, regisno);
          ResultSet rs = ps.executeQuery();
          if (rs.next()) {
              out.println("<h3>Register Number: " + regisno + "</h3>");
             
              out.println("<table><tr><th>subject<br></th><th>marks</th></tr>");
              String name = rs.getString("name");
              out.println("<h3>Student Name: "+ name +"</h3>");
              do {
                  String subject = rs.getString("subject");
                 
                  int marks = rs.getInt("marks");
                  out.println("<tr><td>" + subject + "</td><td>" + marks + "</td></tr>");
              } while (rs.next());
              out.println("</table>");
              
          } else {
              out.println("<p>No records found for Register Number: " + regisno + "</p>");
          }
	}
	catch(Exception e){
		out.println("Connection failed!!! "+ e.toString());
		out.println("================================================");
		
		
	}
%>	
</body>
</html>