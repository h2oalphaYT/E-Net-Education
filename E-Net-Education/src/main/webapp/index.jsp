<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>
E-Net Education
</title>
<link rel="icon" type="images/x-icon" href="images/logo.png">
<link rel ="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
          <a  class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a href="" class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Courses
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">IT</a></li>
            <li><a class="dropdown-item" href="#">SE</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">CSNE</a></li>
            <li><a class="dropdown-item" href="#">CS</a></li>
            <li><a class="dropdown-item" href="#">DS</a></li>
          </ul>
        </li>
        
         
            
            <li class="nav-item">
          <a href="Registation.jsp" class="nav-link" href="#"><i class="fa fa-address-book" aria-hidden="true"></i> Registration</a>
        </li>
      
      </ul>
      
    </div>
  </div>
</nav>

<img src="images/bg.jpg" width = "100%" >

<div class="hero-image">
  <div class="hero-text">
    <h1 style="font-size:150px">Exam Bank </h1>
    <p>Get The Best Free Online Exam Experience</p>
    <div class="d-grid gap-2 col-6 mx-auto">
  <a href="Login.jsp"><button class="btn btn-dark" type="button" >Login</button></a>
  
 
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
      <li class = "back-nav"><a href="index.jsp">Home</a></li>
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

  <a href="index.jsp">Home</a>
  <a href="termsandconditions.jsp">F.A.Q</a>
  <a href="termsandconditions.jsp">Cookies Policy</a>
  <a href="termsandconditions.jsp">Terms Of Service</a>
  

  </div>
   <p>Copyright &copy; 2023</p>
</div>

</footer>


<script src="js/bootstrap.bundle.min.js"></script>




</body>
</html>