<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="icon" type="images/x-icon" href="images/logo.png">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/searchtt.css">
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
          <a  class="nav-link active" aria-current="page" href="#">Home</a>
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
	<div class="wrapper">
	<div class="title">
	Search TimeTable
	</div>
	
	<div class="form">
		
	<form action ="searchtt" method = "post">
		
		<div class="input_field">
			<label>ExamNO</label>
			<input type="text" name="examno">
		</div>
		
		<div class="input_field">
			<input class="btn" type = "submit" value="search" name = "searchtt">
		</div>	
		
	</form>
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
		
</body>
</html>