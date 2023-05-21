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

body {
  background-color: #d2d2e0;
}
body * {
  box-sizing: border-box;
}

.header {
  background-color: #25262e;
  color: white;
  font-size: 1.5em;
  padding: 1rem;
  text-align: center;
  text-transform: uppercase;
}

img {
  border-radius: 50%;
  height: 60px;
  width: 60px;
}

.table-users {
  border: 1px solid #327a81;
  border-radius: 10px;
  box-shadow: 4px 4px 0 rgba(0, 0, 0, 0.1);
  max-width: calc(100% - 2em);
  margin: 1em auto;
  overflow: hidden;
  width: 800px;
}

table {
  width: 100%;
}
table td,
table th {
  color: #2b686e;
  padding: 10px;
}
table td {
  text-align: center;
  vertical-align: middle;
}
table td:last-child {
  font-size: 0.95em;
  line-height: 1.4;
  text-align: left;
}
table th {
  background-color: #daeff1;
  font-weight: 300;
}
table tr:nth-child(2n) {
  background-color: white;
}
table tr:nth-child(2n+1) {
  background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
  table,
tr,
td {
    display: block;
  }

  td:first-child {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    width: 100px;
  }
  td:not(:first-child) {
    clear: both;
    margin-left: 100px;
    padding: 4px 20px 4px 90px;
    position: relative;
    text-align: left;
  }
  td:not(:first-child):before {
    color: #91ced4;
    content: "";
    display: block;
    left: 0;
    position: absolute;
  }
  td:nth-child(2):before {
    content: "Name:";
  }
  td:nth-child(3):before {
    content: "Email:";
  }
  td:nth-child(4):before {
    content: "Phone:";
  }
  td:nth-child(5):before {
    content: "Comments:";
  }

  tr {
    padding: 10px 0;
    position: relative;
  }
  tr:first-child {
    display: none;
  }
}
@media screen and (max-width: 500px) {
  .header {
    background-color: transparent;
    color: white;
    font-size: 2em;
    font-weight: 700;
    padding: 0;
    text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
  }

  img {
    border: 3px solid;
    border-color: #daeff1;
    height: 100px;
    margin: 0.5rem 0;
    width: 100px;
  }

  td:first-child {
    background-color: #c8e7ea;
    border-bottom: 1px solid #91ced4;
    border-radius: 10px 10px 0 0;
    position: relative;
    top: 0;
    transform: translateY(0);
    width: 100%;
  }
  td:not(:first-child) {
    margin: 0;
    padding: 5px 1em;
    width: 100%;
  }
  td:not(:first-child):before {
    font-size: 0.8em;
    padding-top: 0.3em;
    position: relative;
  }
  td:last-child {
    padding-bottom: 1rem !important;
  }

  tr {
    background-color: white !important;
    border: 1px solid #6cbec6;
    border-radius: 10px;
    box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
    margin: 0.5rem 0;
    padding: 0;
  }

  .table-users {
    border: none;
    box-shadow: none;
    overflow: visible;
  }
}


footer {
  background-color: black !important;
  color: white;
  bottom: 0;
  width: 100%;
  font-size: 16px;
 
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





.hero-image {

  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  bottom : 80px;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #c7940a;
  color: white;
}
.dropdown-item a:hover{
  background-color: #c7940a;
  color: white;
}

@media (min-width: 1200px) {
  .hero-text {
    font-size: 30px;
  }
}
@media (max-width: 1199.98px) {
  .hero-text {
    font-size: 20px;
  }
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



	<c:forEach var="time" items="${timetable}">
	
	<c:set var = "examno" value = "${time.examno}" />
	<c:set var = "module" value = "${time.module}" />
	<c:set var = "edate" value = "${time.edate}" />
	<c:set var = "stime" value = "${time.stime}" />
	<c:set var = "tdue" value = "${time.tdue}" />
	
	<div class="table-users">
   <div class="header">Student Contact Request</div>
   
   <table cellspacing="0">
	
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
	<div>
	
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
</div>
</body>
</html>
