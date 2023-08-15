<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<style type="text/css">

body{
    
    background-color: #d2d2e0 !important;
        
}
.service{
    padding: 100px 0;
}

.max-width{
    max-width: 1300px;
    padding: 0 45px;
    margin: auto;

}

.max-width h1{
    text-align: center;
    position: relative;
    font-size: 50px;
    font-weight: 500;
    margin-bottom: 60px;
    padding-bottom: 20px;
    color:#4c4e52 !important;

}
.max-width h1::after{
    content: "";
    position:10px;
    width: 100px;
    height: 3px;
    background: #fff;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);

}

.content{
     display:flex;
     flex-wrap: wrap;
     justify-content:space-around;
     
     
     
}

.card{
    padding: 50px 25px;
    width: calc(26% - 20px);
    border-radius: 6px;
    background-color: #25262e !important;
    text-align: center;
    user-select: none;
    cursor: pointer;
    transition: all 0.3s ease;
    
}

.card:hover{
    background-color: #c7940a !important;
}

.box{
    transition: all 0.3s ease;
}

.card:hover .box{
    transform: scale(1.05);
    
}


.card:hover .box i{
    color:#fff;
}

.card .box h3{
    font-size:25px;
    padding: 10px 0 7px;
    color:#fff;
    
}

</style>


<link rel="icon" type="images/x-icon" href="images/logo.png">
<link rel="stylesheet" type="text/css" href="css/ssfront.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
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
          <a  class="nav-link active" aria-current="page" href="AdminPortal.jsp">Admin Home</a>
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
                        <a class="dropdown-item" href="index.jsp">Log out</a>
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



	<div class="service">
        <div class="max-width">
            <h1>Staff Supporter</h1>
            <div class="content">
                
                <div class="card">
                    <div class="box">
                        <h3>Search TimeTable</h3>
                        <a href="searchtt.jsp">
                        <img src="https://cdn3.iconfinder.com/data/icons/gray-search-view-toolbar/512/search_document-512.png" width=150px height=150px>
                        </a>
                    </div>
                </div>
            
            
                <div class="card">
                    <div class="box">
                    <h3>Create TimeTable</h3>
                       <a href="creatett.jsp">
                        <img src="https://cdn3.iconfinder.com/data/icons/gray-toolbar-4/512/create-512.png" width=150px height=150px>
                        </a>
                    </div>
                </div>
            

            </div>
        </div>
    </div>

//footer

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