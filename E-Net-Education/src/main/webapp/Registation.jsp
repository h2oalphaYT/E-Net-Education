<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

<link rel="stylesheet" type="text/css" href="Registation.css">
</head>
<body>

  <div class="container">
    <div class="title">Registration</div>
    <div class="content">
    
      <form action="Registration" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" placeholder="Enter your name" name="f_name" required>
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" placeholder="Enter your username" name="l_name" required>
          </div>
          <div class="input-box">
            <span class="details">UserID</span>
            <input type="text" placeholder="Enter your userID" name="u_id" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" placeholder="Enter your email" name="email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your number" name="p_number" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="text" placeholder="Enter your password" name="psw" required>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="text" placeholder="Confirm your password" name="c_psw"required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1">
          <input type="radio" name="gender" id="dot-2">
          
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          
           </div>
        </div>
        
         <div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate" required>
  <label class="form-check-label" for="flexCheckIndeterminate" >
    Agree to <a href="#">Terms & Condition</a>
  </label>
</div>
         
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>


</body>
</html>