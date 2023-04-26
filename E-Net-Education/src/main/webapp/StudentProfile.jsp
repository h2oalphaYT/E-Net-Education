<%@page import="com.oop.servlet.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%List<Student> StdDetails = (List<Student>)request.getAttribute("StdDetails"); %>
	
	<%for(int i=0; i < StdDetails.size(); i++){ 
	Student std = StdDetails.get(i);%>
		<p><%=std.getName() %></p>
    
    <%} %>


</body>
</html>