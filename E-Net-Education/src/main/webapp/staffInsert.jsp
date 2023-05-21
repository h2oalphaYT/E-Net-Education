<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Details</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/staffInsert.css">
<link rel="icon" type="images/x-icon" href="images/logo.png">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">E-Net Education</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style = "flex-grow : 0.05" >
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a  class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Admin Support
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Contact</a></li>
            <li><a class="dropdown-item" href="#">Email Admin</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Terms & Condition
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">About Exams</a></li>
            <li><a class="dropdown-item" href="#">About System</a></li>
           
          </ul>
        </li>
         <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                data-bs-toggle="dropdown" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true"></i>  Profile </a>
                
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li>
                        <a class="dropdown-item" href="StudentProfile.jsp">My account</a>
                    </li>

                    <li>
                        <a class="dropdown-item" href="Login.jsp">Log out</a>
                    </li>
                </ul>
            </li>
            
        
      </ul>
      
    </div>
  </div>
</nav>

 <form class="login-form" name="login" action="StaffInsert" method="post" style="background-color:#c2c4c3"> <img src="images/logo.png" width="50px" height="50px">
     
     <h4 class="login-formHeader"> Add Staff Member</h4><br>
      <label>First Name</label>
      <input type="text" name="f_name" required><br>
      
      <label>Last Name</label>
      <input type="text" name="l_name" required><br>
      
      <label>Email</label>
      <input type="email" name="email" required>
      <br>
      <label>Phone Number</label>
      <input type="text" name="phone" required><br>
      
      <label>Position</label>
      <input type="text" name="position" required><br>
      
      <label>User Name</label>
      <input type="text" name="uid" pattern ="^(STF|LIC)\d{5}$" required><br>
      
      <label>Password</label>
      <input type="text" name="psw" required ><br>
        
      
      	<input class="button blueButton" type="submit" value="Add Member">
    
      </form>
    
   
   

  
    
   
   
<script src="bootstrap.bundle.min.js"></script>

    
</body>
</html>