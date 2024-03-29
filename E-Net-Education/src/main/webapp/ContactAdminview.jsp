<%@page import="com.oop.model.Contact" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Admin View</title>
<link rel="icon" type="images/x-icon" href="images/logo.png">
<link rel ="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel ="stylesheet" type="text/css" href="css/ContactAdminview.css">
<link rel="icon" type="images/x-icon" href="images/logo.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>

<jsp:include page="/Showcontactservlet"></jsp:include>

     
       <% ArrayList<Contact> ContactDetails = new ArrayList<Contact>();
   ContactDetails=(ArrayList<Contact>)request.getAttribute("Contactlist"); %>
      
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
            <li><a class="dropdown-item" href="#">SE</a></li>
            <li><a class="dropdown-item" href="#">CSNE</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">CS</a></li>
            <li><a class="dropdown-item" href="#">DS</a></li>
            
          </ul>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Terms & Condition
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="termsandconditions.jsp">About Exams</a></li>
            <li><a class="dropdown-item" href="termsandconditions.jsp">About Us</a></li>
           
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
            
            <li class="nav-item">
          <a href="Registation.jsp" class="nav-link" href="#"><i class="fa fa-address-book" aria-hidden="true"></i> Registration</a>
        </li>
      
      </ul>
      
    </div>
  </div>
</nav>
   
   <div class="table-users">
   <div class="header">Student Contact Request</div>
   
   <table cellspacing="0">
      <tr>
         <th>Contact ID</th>
         <th>Name</th>
         <th>Email</th>
         <th>Massage</th>
         
       <th class="table-info">Contact </th>
      <th class="table-info">Remove</th>
         
      </tr>
      
   
   
  <%for(int i=0 ; i<ContactDetails.size();i++){
	  Contact contact = ContactDetails.get(i); %> 

      <tr>
         
         <td><%=contact.getID() %></td>
         <td><%=contact.getName() %></td>
         <td><%=contact.getEmail() %></td>
         <td><%=contact.getComment() %></td>
         
         <td><a ><button class="fa fa-envelope" onclick="SendMail('<%=contact.getEmail()%>')">Contact</button></a></td>
         <td><a ><button class="button button 1" onclick="IgnoreContact('<%=contact.getID()%>')">Ignore</button></a></td>
      </tr>

    <% }%>
   </table>
</div>


 <footer style="margin-top:291px">
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
 
 <script>
function IgnoreContact(id){
	if(confirm("Are you sure you want to Remove This Message(Feedback)**")){
		window.location.href ="IgnoreContactservlet?id=" + id;
	}
}

function SendMail(email){
	
	 
     var subject = ('My permanent subject line');
     var body = ('My permanent body contents');
     window.open('mailto:email ? subject=subject & body=body');

	
}

</script>
</body>
</html>