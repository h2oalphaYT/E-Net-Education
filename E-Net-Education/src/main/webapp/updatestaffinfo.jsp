<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update information</title>
</head>
<body>

   <%
       String id = request.getParameter("id");
   %>

<form action="" method="post">
       Staff ID<input type ="text" name="stid" value=""><br>
       First Name<input type="text" name="f_name" value="" ><br>
       Last Name<input type="text" name="l_name" value="" ><br>
       Email <input type="text" name="email" value="" ><br>
       Contact no<input type="text" name="contactno" value=""><br>
       Position<input type="text" name="position" value="" ><br>
       User name<input type="text" name="username" value=""><br>
       Password <input type="password" name="password" value=""><br>
<br>
       <input type="submit" name="submit" value="Update information">

</form>

</body>
</html>