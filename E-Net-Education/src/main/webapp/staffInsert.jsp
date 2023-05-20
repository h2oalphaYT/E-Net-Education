<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Details</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/staffInsert.css">

</head>
<body>
  
     <form class="login-form" name="login" action="StaffInsert" method="post" >
     <h4 class="login-formHeader"> Add Staff Member</h4><br>
      <label>First Name</label>
      <input type="text" name="f_name" required><br>
      <label>Last Name</label>
      <input type="text" name="l_name" required><br>
      <label>Email</label>
      <input type="text" name="email" required>
      <br>
      <label>Phone Number</label>
      <input type="text" name="phone" required><br>
      <label>Position</label>
      <input type="text" name="position" required><br>
      <label>User Name</label>
      <input type="text" name="uid" required><br>
      <label>Password</label>
      <input type="text" name="psw" required><br>
        
      
      	<input class="button blueButton" type="submit" value="Add Member">
    
      </form>
    
   
   

   
   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    
</body>
</html>