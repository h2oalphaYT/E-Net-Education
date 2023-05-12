<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="com.oop.model.staff" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Staff  information</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel ="stylesheet" type="text/css" href="StudentProfile.css">
<link rel ="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/StudentPortal.css">

<style>
body {background: rgb(13,12,12);
background: linear-gradient(225deg, rgba(13,12,12,1) 0%, rgba(255,255,255,1) 36%, rgba(255,255,255,1) 92%, rgba(76,75,79,1) 100%);}
</style>
</head>
<body>

 <%staff Staff = (staff)request.getAttribute("StaffDetails");%>
   
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
        <li class="nav-item">
        <a href="" class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Courses
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
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
            <li><a class="dropdown-item" href="#">hithanna danna ekak</a></li>
           
          </ul>
        </li>
         <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                data-bs-toggle="dropdown" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true"></i>  Profile </a>
                
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li>
                        <a class="dropdown-item" href="#">My account</a>
                    </li>

                    <li>
                        <a class="dropdown-item" href="#">Log out</a>
                    </li>
                </ul>
            </li>
            
            <li class="nav-item">
          <a href="Registation.jsp" class="nav-link" href="#"><i class="fa fa-address-book" aria-hidden="true"></i> Registration</a>
        </li>
      
      </ul>
      
    </div>
  </div>
</nav>

<body>

 
<div class="container-fluid bg-dark.bg-gradient">
  <h2 class="text-center text-dark">Update Staff Details</h2>
  <div class="row">
    <div class="col-sm-5">
        <div class="card-body text-center"> 
        <img src="images/av3.png" alt="avatar" class="rounded-circle img-fluid" style="width: 150px">
            <h5 class="my-3"><%=Staff.getF_name() %> <%=Staff.getL_name() %></h5>
            <p class="text-muted mb-1"><%=Staff.getPassword() %> </p>
          <p class="text-muted mb-4"><%=Staff.getEmail()%></p>
           </div> 
    </div>
    
    
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
           <form action="Updatestaffinfoservlet.java" method="post">
	
		
		First Name
		<input type="text" name="name" value="<%=Staff.getF_name() %>">
		
		
		Last Name
		<input type="text" name="lname" value="<%=Staff.getL_name() %>">
		
		
		Email
		<input type="text" name="email" value="<%=Staff.getEmail()%>">
	
	
		User Name
		<input type="text" name="userid" value="<%=Staff.getPhone()%>" readonly>
	
		Phone number
		<input type="text" name="phone" value="<%=Staff.getPosition() %>">
		
		Position
		<input type="text" name="position" value="<%=Staff.getPassword() %>">
	
			
	<br>
	<br>
	<input class="btn btn-outline-dark" type="submit" name="submit" value="Update Staff Profile">
	</form>
      </div>
    </div>
  </div>
</div>
</div>


<footer>
<div class="row primary">
  <div class="column about">
    <h3>Connect</h3>
    <p>
      <i class="fa fa-map-marker" aria-hidden="true"></i>
      47/3 Mount Lavinia, Service Road, Colombo.
    </p>
    <div class="social">
      <i class="fa fa-facebook-square"></i>
      <i class="fa fa-twitter-square"></i>
      <i class="fa fa-linkedin-square"></i>
      <i class="fa fa-instagram"></i>
    </div>
  </div>

  <div class="column link">
    <h3>Links</h3>
    <ul>
      <li class = "back-nav"><a href="#home">Home</a></li>
      <li class = "back-nav"><a href="#team">Team</a></li>
      <li class = "back-nav"><a href="#blogs">Blogs</a></li>
      <li class = "back-nav"><a href="#support">Support</a></li>
    </ul>
  </div>

  <div class="column subscribe">
    <h6>Providing your children with a batter future</h6>
    <div>
      <input type="email" placeholder="Your email id here" />
      <button>Subscribe</button>
    </div>
  </div>
</div>

<div class="row copyright">
  <div class="footer-menu">

  <a href="#">Home</a>
  <a href="#">F.A.Q</a>
  <a href="#">Cookies Policy</a>
  <a href="#">Terms Of Service</a>
  <a href="#">Support</a>

  </div>
   <p>Copyright &copy; 2023</p>
</div>

</footer>



<script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>