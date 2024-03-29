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
<link rel="stylesheet" type="text/css" href="css/AdminPortal.css">
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
          <a  class="nav-link active" aria-current="page" href="AdminPortal.jsp">Home</a>
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
            <li><a class="dropdown-item" href="termsandconditions.jsp">About Exams</a></li>
            <li><a class="dropdown-item" href="termsandconditions.jsp">About System</a></li>
           
          </ul>
        </li>
         <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                data-bs-toggle="dropdown" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true"></i>  Profile </a>
                
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li>
                        <a class="dropdown-item" href="AdminPortal.jsp">My account</a>
                    </li>

                    <li>
                        <a class="dropdown-item" href="index.jsp">Log out</a>
                    </li>
                </ul>
            </li>
            
        
      </ul>
      
    </div>
  </div>
</nav>



<!-- Container (Services Section) -->
<div class="container-fluid text-center"><br>
  <h2>Admin Services</h2><br>
  <h4>Maintaining The Accuracy of E-Net-Education</h4>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <a  href="ssfront.jsp" style="text-decoration:none; color: #4d4d4d "><span class="fa fa-pencil-square-o " style="font-size:36px; color:red"></span>
      <h4> Add Student Time Table</h4></a>
      <p>Inserting new time tables</p>
    </div>
    
    <div class="col-sm-4">
      <a href="#" style="text-decoration:none; color: #4d4d4d"><span class="fa fa-clipboard" style="font-size:36px; color:red"></span>
      <h4>Manage Exam Interface</h4></a>
      <p>Managing what students can see</p>
    </div>
    
    <div class="col-sm-4">
       <a href="staffdetail.jsp" style="text-decoration:none; color: #4d4d4d"><span class="fa fa-plus-square" style="font-size:36px ;color:red"></span>
      <h4>  Add Staff Members</h4></a>
      <p>Insert new staff members</p>
    </div>
  </div>
  
  <br><br>
  <div class="row">
    <div class="col-sm-4">
       <a href="#" style="text-decoration:none; color: #4d4d4d"><span class="	fa fa-gear" style= "font-size:36px; color:red"></span>
      <h4>Settings</h4></a>
      <p>Fixing system issues</p>
    </div>
    
    <div class="col-sm-4">
       <a href="ContactAdminview.jsp" style="text-decoration:none; color: #4d4d4d"><span class="fa fa-envelope" style= "font-size:36px;color:red"></span>
      <h4>Student Review</h4></a>
      <p>For student concerns</p>
    </div>
    
    <div class="col-sm-4">
       <a href="#" style="text-decoration:none; color: #4d4d4d"><span class="fa fa-power-off" style= "font-size:36px ;color:red"></span>
      <h4 >System Reset</h4></a>
      <p>If Serever Under Maintain.</p>
    </div>
  </div>
</div>


<br>



<footer style="margin-top:60px">
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
    <h6>Providing your children with a better future</h6>
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