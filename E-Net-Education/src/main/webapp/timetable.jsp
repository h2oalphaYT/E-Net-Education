<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');
@charset "ISO-8859-1";

.full{
	height:500px;
}

footer {
  background-color: black !important;
  color: white;
  bottom: 0;
  width: 100%;
  font-size: 16px;
  position:absolute;
 
}
footer * {
  box-sizing: border-box;
  border: none;
  outline: none;
}
.row {
  padding: 1em 1em;
  width: 100%;
}
.row.primary {
  display: grid;
  grid-template-columns: 3fr 2fr 4fr;
  align-items: stretch;
}
.column {
  width: 100%;
  display: flex;
  flex-direction: column;
  padding: 0 2em;
  min-height: 15em;
}
h3 {
  width: 100%;
  text-align: left;
  color: white;
  font-size: 1.4em;
  white-space: nowrap;
}
ul {
  list-style: none;
  display: flex;
  flex-direction: column;
  padding: 0;
  margin: 0;
}
.back-nav:not(:first-child) {
  margin-top: 0.8em;
}
ul li a {
  color: #a7a7a7;
  text-decoration: none;
}
ul li a:hover {
  color: #c7940a;
}
.about p {
  text-align: justify;
  line-height: 2;
  margin: 0;
}
input,
button {
  font-size: 1em;
  padding: 1em;
  width: 100%;
  border-radius: 5px;
  margin-bottom: 5px;
}
button {
  background-color: #c7940a;
  color: #ffffff;
}
button:hover  {
  background-color: #ffffff;
  color: #c7940a;
}



div.social {
  display: flex;
  justify-content: space-around;
  font-size: 2.4em;
  flex-direction: row;
  margin-top: 0.5em;
}
.social i {
  color: #bac6d9;
}
.copyright {
  padding: 0.3em 1em;
  background-color: #25262e;
}
.footer-menu{
  float: left;
    
}
.footer-menu a{
  color: #cfd2d6;
  padding: 10px;
  margin-top :10px;
  text-decoration : none;
}
.footer-menu a:hover, .social i:hover{
  color: #c7940a;
}
.copyright p {
  font-size: 0.9em;
  text-align: right;
}

*{
	margin:0;
	padding:0;
	outline:0;
	font-family: 'Montserrat', sans-serif;
	

}
body{
	background:#4c4e52;
	height:500px;
}




table{
	position:absolute;
	z-index:2;
	left:50%;
	top:40%;
	transform:translate(-50%, -50%);
	width:60%;
	border-collapse:collapse;
	border-radius:12px 12px 0 0;
	border-spacing:0;
	border-radious:12px 12px 0 0;
	overflow:hidden;
	box-shadow;0 2px 12px rgba(32,32,32,.3);
	background:#fafafa;
	text-align:center;
	

}

th,td{
	padding:18px 20px;
	
}

th{
	background:#27282a;
	color:#fafafa;
	text-transform:uppercase;
	font-family:
	
}

td{

}

tr:nth-child(odd){
	backgroud-color:#eeeeee;
}

.btn{
	font-size:15px;
	font-weight:bold;
	background:#27282a;
	width:250px;
	padding:20px;
	text-align:center;
	text-decoration:none;
	text-transform:uppercase;
	color:#fff;
	border-radius:5px;
	cursor:pointer;
	box-shadow:0 0 10px rgba(0,0,0,0.1);
	-webkit-transition-duration:0.3s;
	transition-duration:0.3s;
	-webkit-transition-property:box-shadow,transform;
	position: relative;
	margin-top:30px;
    left:60%;
	

}

.btn:hover, .btn:focus, .btn:active{
	box-shadow:0 0 20px rgba(0,0,0,0.1);
	background:#27282a;
}

</style>
</head>
<body>
<div class="full">
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



	<c:forEach var="time" items="${timetable}">
	
	<c:set var = "examno" value = "${time.examno}" />
	<c:set var = "module" value = "${time.module}" />
	<c:set var = "edate" value = "${time.edate}" />
	<c:set var = "stime" value = "${time.stime}" />
	<c:set var = "tdue" value = "${time.tdue}" />
	
	<div class="tbl">
	
	<table>
	<tr>
		<th>Exam No</th>
		<th>Module</th>
		<th>Date</th>
		<th>Time</th>
		<th>Duration</th>
	</tr>
	<tr>
	<td>${time.examno}</td>
	<td>${time.module}</td>
	<td>${time.edate}</td>
	<td>${time.stime}</td>
	<td>${time.tdue}</td>
	</tr>
	
	</table>
	
	</div>
	
	</c:forEach>
	
	<c:url value="updatett.jsp" var="ttupdate">
	
		<c:param name="examno" value="${examno}" />
		<c:param name="module" value="${module}" />
		<c:param name="edate" value="${edate}" />
		<c:param name="stime" value="${stime}" />
		<c:param name="tdue" value="${tdue}" />
		
	</c:url>

	
	<a href="${ttupdate}">
	
	<input class="btn" type="button" value="update time table" name="updatett" >
	
	</a>
	
	<c:url value="deletett.jsp" var="ttdelete">
	
		<c:param name="examno" value="${examno}" />
		<c:param name="module" value="${module}" />
		<c:param name="edate" value="${edate}" />
		<c:param name="stime" value="${stime}" />
		<c:param name="tdue" value="${tdue}" />
	
	</c:url>
	
	<a href="${ttdelete}">
	
	<input class="btn" type="button" value="delete time table" name="updatett" >
	
	</a>
	
	
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
</div>
</body>
</html>
