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
    String email = request.getParameter("email");
    if (email != null ) {
        int si = email.indexOf('@');
        int li = email.lastIndexOf('@');
        int di = email.indexOf('.', si + 1); 
        int c=1;
        if (si == -1 || si!= li) {
            c = 0; 
        } else if (di == -1) {
            c = 0; 
        } else if (di - si < 3) {
            c = 0; 
        } else if (email.length() - di <= 2) {
            c = 0; 
        }

        if (c==1) {
            out.println("<h3>Email ID is valid.</h3>");
        } 
        else{
        	 out.println("<h3>Email ID is not valid.</h3>");
        } 
        }
        
%>

</body>
</html>