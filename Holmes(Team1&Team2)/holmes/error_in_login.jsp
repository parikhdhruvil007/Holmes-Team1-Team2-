<!DOCTYPE HTML>
<html>
	<head>
	<title>HOLMES</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
		<script src="js/jquery.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/jquery.scrolly.min.js"></script>
		<script src="js/jquery.onvisible.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
        <script>
	    	$(function() {
			   $( "#accordion" ).accordion();
	    	});
	    </script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
			<link rel="stylesheet" href="css/style-noscript.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="homepage">

		<!-- Header -->
			<div id="header">
						
				<!-- Inner -->
					<div class="inner">
						<header>
							<h1><img src="images/logo.png" /></h1>
							<hr />
					  </header>
						<footer>
							<a href="#features" class="button circled scrolly">Start</a>
						</footer>
					</div>
					
				<!-- Nav -->
				
					<nav id="nav">
				
					
				<span>
				<%
				if(session.getAttribute("fname")==null)
				{
						out.print("<a href='#features'>Login / Sign Up</a>");
						
				}
				else
				{
					out.print("Hi, "+session.getAttribute("fname")+"&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout.jsp'>Logout</a>");
				}
				%>
				</span>
					<br>
						<ul>
							<li><a href="home.jsp">Home</a></li>
							<li><a href="#team" class="scrolly">About us</a></li>
							<li><a href="#contact" class="scrolly">Contact us</a></li>
							<li><a href="#faqs" class="scrolly">FAQs</a></li>
						</ul>
					</nav>

			</div>

		<!-- Features -->
			<div class="wrapper style1">
				
				<section id="features" class="container special">
					<header>
						<h2><strong>Hoboken Laundry Management System</strong></h2>
					</header>
                    
                    <div class="container">
					<div class="row 200%">
						<div class="8u" id="content">
							<article id="main">
								<header>
									<h2></h2>
									<p>
										The Hoboken Laundry Management System is a well profound, well organized and smart laundry solution to all your laundry woes. We provide a laundry service which explicitly tells you the current status of laundry online.<br /><br /> 
The main goal behind expanding this management system is to save time of customers. They don’t have to wait hours to get their laundry done. Once, they set up the washer then they can go around and check their laundry status online to see if the washer is done or not. Unlike, other laundry services HOLMS offers the personalized, time saving service that any customer could desire.
									</p>
								</header>
							</article>
						</div>
						<div class="4u" id="sidebar">
							<hr class="first" />
							<section>
                            	<h5><font color="red">invalid Phone Number or Pin</font></a></h5>
								<form action="status.jsp">
									Phone Number: <input name="ph" type="text"><br />
                                	PIN: <input name="pin" type="password"><br />
									<div align="center"><input name="Login" type="submit" value="Login"> <br />OR<br /> <a href="registration.jsp" class="button">Register</a></div>
                                </form>
							</section>
						</div>
					</div>
					
				</section>
			</div>

<!-- Team Members -->
			<section class="carousel" id="team">
            <header style="text-align: center;">
<h2>About Us</h2></header>
				<div class="reel">

					<article>
						<a href="#" class="image featured"><img src="people/1.jpg" alt="" /></a>
						<header>
							<h3><a href="#">Dhruvil Parikh</a></h3>
						</header>
						<p>Major: Bachelor's in Computer Engineering
             Master's in Software Engineering</p>							
					</article>
				
					<article>
						<a href="#" class="image featured"><img src="people/2.jpg" alt="" /></a>
						<header>
							<h3><a href="#">Sonali Thaker</a></h3>
						</header>
						<p>Major: Bachelor's in Electrical Engineering<br />
             Master's in Software Engineering</p>							
					</article>
				
					<article>
						<a href="#" class="image featured"><img src="people/3.jpg" alt="" /></a>
						<header>
							<h3><a href="#">Kajal Patel</a></h3>
						</header>
						<p>Major: Bachelor's in Information Technology
             Master's in Software Engineering</p>							
					</article>
				
					<article>
						<a href="#" class="image featured"><img src="people/4.jpg" alt="" /></a>
						<header>
							<h3><a href="#">Abdullah Khanfor</a></h3>
						</header>
						<p>Major: Bachelor of Science in <br /> Computer Science <br />
             Master of Science in Computer Science</p>							
					</article>
				
					<article>
						<a href="#" class="image featured"><img src="people/5.jpg" alt="" /></a>
						<header>
							<h3><a href="#">Sarvesh Shah</a></h3>
						</header>
						<p>Major: Bachelor's in Computer Engineering
             Master's in Engineering Management</p>							
					</article>

					<article>
						<a href="#" class="image featured"><img src="people/6.jpg" alt="" /></a>
						<header>
							<h3><a href="#">Nikhil Seshagiri</a></h3>
						</header>
						<p>Major: Bachelor's in Computer Engineering Master's in Software Engineering</p>							
					</article>
				
					<article>
						<a href="#" class="image featured"><img src="people/7.jpg" alt="" /></a>
						<header>
							<h3><a href="#">Neel Patel</a></h3>
						</header>
						<p>Major: Bachelor's in Computer Engineering Master's in Software Engineering</p>							
					</article>
				
					<article>
						<a href="#" class="image featured"><img src="people/8.jpg" alt="" /></a>
						<header>
							<h3><a href="#">Drasty Patel</a></h3>
						</header>
						<p>Major: Bachelor's in Computer Engineering Master's in Software Engineering</p>							
					</article>

				</div>
			</section>

		<!-- Features -->
			<div class="wrapper style1">
				
				<section id="contact" class="container special">
					<header>
						<h2><strong>Contact Us</strong></h2>
					</header>
                    
                    <div class="container">
					<div class="row 200%">
						<div class="8u" id="content">
							<article id="main">
								<header>
                                <form>
                                    <h3>Give your feedback here:</h3>
                                    <p>
                                        First Name:	<input type="text" name="fname"/><br />
                                        Last Name: <input type="text" name="lname"/><br />
                                        Phone Number: <input type="text" name="phone"/><br />
                                        Email: <input type="email" name="email" /><br />
                                        Comments: <br />
                                        <textarea rows="4" cols="30" name="add"></textarea><br />
                                        <input type="Submit" name="Submit" value="Submit"/> 
                                    </p>
								</form>
								</header>
							</article>
						</div>
						<div class="4u" id="sidebar">
							<hr class="first" />
							<section>
						<h3></h3>
                        <ul>
                        <li><p><strong>Hours of Operation:</strong><br>
                        Monday to Friday: 8:00 AM to 10:00 PM<br>
                        Saturday : 9:00 AM to 9:00 PM<br>
                        Sunday : 10:00 AM to 6:00 PM</p></li>
                        <li><p><strong>Address:</strong><br>
                        1 Castle Point on Hudson, Hoboken, NJ 07030</p></li>
                        <li><p><strong>Call Us:</strong><br> 1-800-XXX-XXXX</p></li>
                        <li><p><strong>E-mail:</strong><br>holmes@gmail.com</p></li>
                        </ul>
							</section>
						</div>
					</div>
					
				</section>
			</div>
    
                    
<!-- FAQs -->
		<div class="wrapper style1" id="faqs">
				<div class="container">
					<article id="main" class="special">
						<header>
							<h2>FAQs</h2>
						</header>
                        	<div id="accordion">
                          		<h3>How can I setup my account/pin?</h3>
                          	<div>
                            	<p>In order to setup the account, we first have to go through the registration process. First step is to click on the above “REGISTRATION” tab on the same page. A registration page with some fields as name, address, pin and phone number will appear on reloading. Now fill out the information on the registration page and hit the “Submit” button after completion. Now your account is setup with Hoboken Laundry Management System. Please login to check your Status.
                            	</p>
                          </div>
                          
                       		<h3>How can I login?</h3>
                          <div>
                            <p>First step is to click on the above “HOME” tab. A home page will be reloaded with the login option on the right side panel of that page. Login box on the right side requires two field: First Name and Phone Number. After completing the information, please click on the “SIGN IN” button to check the Status of the Laundry.
                            </p>
                          </div>
                          	<h3>How to Check Laundry Status?</h3>
                          <div>
                            <p>First Step is to “LOGIN” from the home page. Now, clicking Sign In button, you will be directed to different page to check the Status of the Laundry. 
                            </p>
                          </div>
           
                            </div>
						</section>
					</article>
				</div>
			</div>		
		<!-- Footer -->
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="12u">
							
							<!-- Contact -->
								<section class="contact">
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="https://www.facebook.com/HobokenLaundryManagementSystem?fref=ts" class="icon fa-facebook" target="new"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
										<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
										<li><a href="#" class="icon fa-linkedin"><span class="label">Linkedin</span></a></li>
									</ul>
								</section>
							
							<!-- Copyright -->
								<div class="copyright">
									<ul class="menu">
										<li>&copy; Hoboken Laundry Management System. All rights reserved 2015.</li>
									</ul>
								</div>
							
						</div>
					
					</div>
				</div>
			</div>

	</body>
</html>