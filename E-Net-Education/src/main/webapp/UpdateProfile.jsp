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

<%Student std = (Student)session.getAttribute("StdDetails"); %>	

	<form action="#" method="post">
	<table>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="name" value="<%=std.getName() %>"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="fname" value="<%=std.getL_name() %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%=std.getEmail() %>"></td>
	</tr>
	<tr>
		<td>User ID</td>
		<td><input type="text" name="phone" value="<%=std.getP_number() %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="uname" value="<%=std.getGender() %>"></td>
	</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Profile">
	</form>	
</body>
</html>