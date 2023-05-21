<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student PortalS</title>

<link rel="icon" type="images/x-icon" href="images/logo.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/StudentPortal.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">




<style>

html {
	scroll-behavior :smooth;
}
.panel {
  border: 1px solid #ffd11a;
  border-radius:0;
  transition: box-shadow 0.5s;
}

.panel:hover {
  box-shadow: 8px 0px 40px rgb(255, 209, 26);
}

.panel-footer .btn:hover {
  border: 3px solid gray;
  background-color: #fff !important;
  color: black;
}

.panel-heading {
  color: #fff !important;
  background-color: #232323 !important;
  padding: 25px;
  border-bottom: 1px solid transparent;
  border-top-left-radius: 0px;
  border-top-right-radius: 0px;
  border-bottom-left-radius: 0px;
  border-bottom-right-radius: 0px;
}

.panel-footer {
  background-color: #fff !important;
}

.panel-footer h3 {
  font-size: 32px;
}

.panel-footer h4 {
  color: #aaa;
  font-size: 14px;
}

.panel-footer .btn {
  margin: 15px 0;
  background-color: #232323;
  color: #fff;
}
.btn:hover {
color : White;
background-color :#ffc107; 
}

//team

#team {
  background: #fff;
  padding: 60px 0;
  box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.1);
}

#team .member {
  text-align: center;
  margin-bottom: 20px;
  position: relative;
  border-radius: 50%;
  overflow: hidden;
}

#team .member .member-info {
  opacity: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
  transition: 0.2s;
}

#team .member .member-info-content {
  margin-top: 50px;
  transition: margin 0.2s;
}

#team .member:hover .member-info {
  background: rgba(0, 62, 128, 0.7);
  opacity: 1;
  transition: 0.4s;
}

#team .member:hover .member-info-content {
  margin-top: 0;
  transition: margin 0.4s;
}

#team .member h4 {
  font-weight: 700;
  margin-bottom: 2px;
  font-size: 18px;
  color: #fff;
}

#team .member span {
  font-style: italic;
  display: block;
  font-size: 13px;
  color: #fff;
}

#team .member .social {
  margin-top: 15px;
}

#team .member .social a {
  transition: 0.3s;
  color: rgba(255, 255, 255, 0.7);
}

#team .member .social a:hover {
  color: #fff;
}

#team .member .social i {
  font-size: 18px;
  margin: 0 2px;
}


//counter






.sectionClass {
  padding: 20px 0px 50px 0px;
  position: relative;
  display: block;
}

.fullWidth {
  width: 100% !important;
  display: table;
  float: none;
  padding: 0;
  min-height: 1px;
  height: 100%;
  position: relative;
}


.sectiontitle {
  background-position: center;
  margin: 30px 0 0px;
  text-align: center;
  min-height: 20px;
}

.sectiontitle h2 {
  font-size: 30px;
  color: #222;
  margin-bottom: 0px;
  padding-right: 10px;
  padding-left: 10px;
}


.headerLine {
  width: 160px;
  height: 2px;
  display: inline-block;
  background: #101F2E;
}


.projectFactsWrap{
    display: flex;
  margin-top: 30px;
  flex-direction: row;
  flex-wrap: wrap;
}


#projectFacts .fullWidth{
  padding: 0;
}

.projectFactsWrap .item{
  width: 25%;
  height: 100%;
  padding: 50px 0px;
  text-align: center;
}

.projectFactsWrap .item:nth-child(1){
  background: rgb(16, 31, 46);
}

.projectFactsWrap .item:nth-child(2){
  background: rgb(18, 34, 51);
}

.projectFactsWrap .item:nth-child(3){
  background: rgb(21, 38, 56);
}

.projectFactsWrap .item:nth-child(4){
  background: rgb(23, 44, 66);
}

.projectFactsWrap .item p.number{
  font-size: 40px;
  padding: 0;
  font-weight: bold;
}

.projectFactsWrap .item p{
  color: rgba(255, 255, 255, 0.8);
  font-size: 18px;
  margin: 0;
  padding: 10px;
  font-family: 'Open Sans';
}


.projectFactsWrap .item span{
  width: 60px;
  background: rgba(255, 255, 255, 0.8);
  height: 2px;
  display: block;
  margin: 0 auto;
}


.projectFactsWrap .item i{
  vertical-align: middle;
  font-size: 50px;
  color: rgba(255, 255, 255, 0.8);
}


.projectFactsWrap .item:hover i, .projectFactsWrap .item:hover p{
  color: white;
}

.projectFactsWrap .item:hover span{
  background: white;
}

@media (max-width: 786px){
  .projectFactsWrap .item {
     flex: 0 0 50%;
  }
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
          <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                        <a class="dropdown-item" href="StudentProfile.jsp">My account</a>
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


<section id="team" style="background-color:light">

            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="images/carousel-1.jpg" alt="" width="100%" >
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h5 class="text-warning text-uppercase mb-3 animated slideInDown">Best Online Courses</h5>
                                <h1 class="display-3 text-white animated slideInDown">The Best Online Examination Platform</h1>
                                <p class="fs-5 text-white mb-4 pb-2">An all-in-one platform to conduct online examinations with ease at an unmatched scale</p>
                                <a href="#about" class="btn btn-warning py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                <a href="#" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Attempt Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-3 col-sm-6 wow fadeInUp" >
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <a href="#counter" ><i class="fa fa-3x fa-graduation-cap text-warning mb-4"></i></a>
                            <h5 class="mb-3 text-dark">Skilled Instructors</h5>
                            <p class="text-dark">Choose your favourite instructors with best qualifications.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" >
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <a href="" ><i class="fa fa-3x fa-globe text-warning mb-4"></i></a>
                            <h5 class="mb-3 text-dark">Online Classes</h5>
                            <p class="text-dark">Take classes at any time, any where</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" >
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <a href="ttsview.jsp" ><i class="fa fa-3x fa-clock-o text-warning mb-4"></i></a>
                            <h5 class="mb-3 text-dark">Time Table</h5>
                            <p class="text-dark">Check time tables to adjust exams with your daily schedule.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" >
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <a href="" ><i class="fa fa-3x fa-laptop text-warning mb-4"></i></a>
                            <h5 class="mb-3 text-dark">MOCK Library</h5>
                            <p class="text-dark">Practice before your real examinations.Try it here!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    </section>
    <!-- Service End -->

<div class="sectiontitle" id="counter">
    <h2>Projects statistics</h2>
    <span class="headerLine"></span>
</div>
<div id="projectFacts" class="sectionClass">
    <div class="fullWidth eight columns">
        <div class="projectFactsWrap ">
            <div class="item wow fadeInUpBig animated animated" data-number="12" style="visibility: visible;">
                <i class="fa fa-handshake-o"></i>
                <p id="number1" class="number">12</p>
                <span></span>
                <p>Projects done</p>
            </div>
            <div class="item wow fadeInUpBig animated animated" data-number="55" style="visibility: visible;">
                <i class="fa fa-keyboard-o"></i>
                <p id="number2" class="number">55</p>
                <span></span>
                <p>Current Exams</p>
            </div>
            <div class="item wow fadeInUpBig animated animated" data-number="1000" style="visibility: visible;">
                <i class="fa fa-users"></i>
                <p id="number3" class="number">1000</p>
                <span></span>
                <p>Student Activity</p>
            </div>
            <div class="item wow fadeInUpBig animated animated" data-number="246" style="visibility: visible;">
                <i class="	fa fa-mortar-board"></i>
                <p id="number4" class="number">246</p>
                <span></span>
                <p>Graduate Courses</p>
            </div>
        </div>
    </div>
</div>


    <!-- About Start -->
    <div class="container-xxl py-5" id="about">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp"  style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="img-fluid position-absolute w-100 h-100" src="images/about.jpg" alt="" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" >
                    <h4 class="section-title bg-white text-start text-warning pe-3">About Us</h4>
                    <h1 class="mb-4">Welcome to E-Net LEARNING</h1>
                    <p class="mb-4">Bringing advancements to your exam routine with automated, comprehensive, accurate and accurate options.</p>
                    <p class="mb-4">Try out questions to attempt multiple times and exams in an adjustable routine. Accuracy and quality service are granted!
                   </p>
                    <div class="row gy-2 gx-4 mb-4">
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-warning me-2"></i>Skilled Instructors</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-warning me-2"></i>Online Classes</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-warning me-2"></i>International Certificate</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-warning me-2"></i>Try any where any time</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-warning me-2"></i>Online Classes</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-warning me-2"></i>International Certificate</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-warning me-2"></i>MOCK exams</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-warning me-2"></i>Exams Interfaces</p>
                        </div>
                    </div>
                    <a class="btn btn-warning py-3 px-5 mt-2" href="">Read More</a>
                </div>
            </div>
        </div>
    </div>

<section id="team" style="background: linear-gradient(135deg, #0000008c , black);">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2 class="section-title  text-start text-warning pe-3">Team</h2>
          <p class="text-light">Get to know the professionals behind your view. They make the whole process easier.</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6" data-aos="zoom-out" data-aos-delay="100">
            <div class="member">
              <img src="images/team-1.jpg"  class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Pasindu Malinda</h4>
                  <span>System Administrator</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-instagram"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6" data-aos="zoom-out" data-aos-delay="200">
            <div class="member">
              <img src="images/team-2.jpg"  class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Malshika Wimalarathna</h4>
                  <span>System Administrator</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-instagram"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6" data-aos="zoom-out" data-aos-delay="300">
            <div class="member">
              <img src="images/team-3.jpg"  class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Kavindu Maduranga</h4>
                  <span>Staff Support</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-instagram"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6" data-aos="zoom-out" data-aos-delay="400">
            <div class="member">
              <img src="images/team-4.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Chethana Ranasinghe</h4>
                  <span>Staff Support</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-instagram"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section>


  <div class="container-fluid bg-black-50 text-secondary">
  <h2 class="text-center text-warning">CONTACT</h2>
  
   <form action="contactInsertServlet" method="post"  >
  <div class="row">
    <div class="col-sm-5  text-black-50" >
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>  Mount Lavinia, Colombo</p>
      <p><span class="glyphicon glyphicon-phone"></span> +94 717245632</p>
      <p><span class="glyphicon glyphicon-envelope"></span> enetEDU@my.ENET.lk</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group ">
          <button class="btn btn-dark" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
  
  </form>
</div>

<footer>
<div class="row primary">
  <div class="column about">
    
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
  <a href="termsandconditions.jsp">Terms Of Service</a>
  <a href="#">Support</a>

  </div>
   <p>Copyright &copy; 2023</p>
</div>

</footer>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.min.js"></script>

<script>
$.fn.jQuerySimpleCounter = function (options) {
	  var settings = $.extend(
	    {
	      start: 0,
	      end: 100,
	      easing: "swing",
	      duration: 400,
	      complete: ""
	    },
	    options
	  );

	  var thisElement = $(this);

	  $({ count: settings.start }).animate(
	    { count: settings.end },
	    {
	      duration: settings.duration,
	      easing: settings.easing,
	      step: function () {
	        var mathCount = Math.ceil(this.count);
	        thisElement.text(mathCount);
	      },
	      complete: settings.complete
	    }
	  );
	};

	$("#number1").jQuerySimpleCounter({ end: 12, duration: 3000 });
	$("#number2").jQuerySimpleCounter({ end: 55, duration: 3000 });
	$("#number3").jQuerySimpleCounter({ end: 359, duration: 2000 });
	$("#number4").jQuerySimpleCounter({ end: 246, duration: 2500 });

	/* AUTHOR LINK */
	$(".about-me-img").hover(
	  function () {
	    $(".authorWindowWrapper").stop().fadeIn("fast").find("p").addClass("trans");
	  },
	  function () {
	    $(".authorWindowWrapper")
	      .stop()
	      .fadeOut("fast")
	      .find("p")
	      .removeClass("trans");
	  }
	);

</script>


</body>
</html>