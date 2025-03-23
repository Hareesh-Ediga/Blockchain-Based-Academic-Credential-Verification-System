<%-- 
    Document   : index
    Created on : 20 Dec, 2021, 11:23:13 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Aesthetic by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Certificate Issue</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Merriweather:300,400|Montserrat:400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
        <style>
             body {
                background: url('your-background-image.jpg') no-repeat center center fixed;
                background-size: cover;
                color: #fff;
            }
            .navbar {
                border-bottom: 2px solid #fff;
            }
            .gtco-logo img {
                width: 50px;
                height: auto;
                vertical-align: middle;
            }
             .vision-mission {
                display: flex;
                align-items: stretch;
                gap: 20px;
                min-height: 400px; /* Minimum height to ensure visibility */
            }

            .image-slider {
                flex: 1;
                max-width: 40%;
                display: flex;
                align-items: center;
                justify-content: center;
                overflow: hidden; /* Ensures no overflow issues */
                min-height: 400px; /* Matches vision content height */
            }

            .image-slider img {
                width: 100%; /* Adjust to container width */
                height: auto; /* Let height scale naturally */
                object-fit: cover;
                border-radius: 10px;
            }

            .text-content {
                flex: 2; /* Takes up 2/3 of the space */
                max-width: 60%; /* Adjust width for text */
                padding: 20px;
                background: rgba(255, 255, 255, 0.8); /* Add contrast for text */
                border-radius: 10px;
                color: #000; /* Black text for readability */
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            .text-content h2 {
                font-size: 24px;
                color: burlywood; /* Darker shade for headings */
                margin-bottom: 10px;
            }
            .text-content p {
                font-size: 16px;
                line-height: 1.6;
                margin-bottom: 15px;
            }
            .text-content ul {
                list-style: disc;
                margin-left: 20px;
            }
             .gtco-nav {
                background-color: #333; /* Navbar background color */
                padding: 15px 20px;
                display: flex; /* Use flexbox */
                justify-content: space-between; /* Space between logo and menu */
                align-items: center; /* Vertically align items */
                border-bottom: 2px solid #ff6347;
            }
            .gtco-logo img {
                height: 50px; /* Adjust the height of the logo */
                width: auto; /* Maintain aspect ratio */
            }
            .menu-1 {
                display: flex;
                justify-content: flex-end;
                float: right;/* Aligns the menu to the right */
            }
            .menu-1 ul {
		list-style: none;
		margin: 0;
		padding: 0;
            }

            .menu-1 ul li {
		display: inline-block;
		margin-right: 15px;
            }

            .menu-1 ul li a {
		text-decoration: none;
                font-size: 16px;
		color: #333;
		font-weight: bold;
            }

            .menu-1 ul li a:hover {
		color: #007bff; /* Highlight link on hover */
            }
            .footer {
                background-color: #222;
                color: #fff;
                padding: 40px 0;
                text-align: left;
            }
            .footer h4 {
                font-size: 18px;
                margin-bottom: 20px;
            }
            .footer p {
                font-size: 14px;
                margin-bottom: 10px;
            }
            .footer .social-media-links {
                list-style: none;
                padding: 0;
            }
            .footer .social-media-links li {
                margin: 5px 0;
            }
            .footer .social-media-links a {
                color: #fff;
                text-decoration: none;
            }
            .footer .social-media-links a:hover {
                text-decoration: underline;
            }
            .footer .col-md-4 {
                margin-bottom: 20px;
            }
            .footer .container {
                max-width: 1200px;
            }
        </style>
	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				<div class="col-sm-2 col-xs-12">
							<div id="gtco-logo"><a href="index.html"><h5></h5></a></div>
						</div>
				<div class="gtco-logo">
					
                                        
                                            <img src="images/logo.png" alt="RNSIT Logo" style="height: 50px; margin-right: 10px;">
                
                                </div>       
					
			
						<ul class="menu-l">
							<li class="active"><a href="adminpage.jsp">Home</a></li>
							<li><a href="registerstudent.jsp">Register Student</a></li>
                                                        <li><a href="uploadcertificate.jsp">Upload Certificate</a></li>
                                                        <li><a href="viewhash.jsp">View Hash</a></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul>
					
				
				
			</div>
		</nav>
 
            <div class="vision-mission">
    <!-- Left Side Image Slider -->
                <div class="image-slider">
                    <div id="slider-carousel" class="owl-carousel owl-theme">
                        <div class="item">
                            <a href="#">
                                <img src="images/college.png" alt="Image 1" style="width: 100%; border-radius: 10px;">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="images/college1.jpg" alt="Image 2" style="width: 100%; border-radius: 10px;">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="images/college2.jpg" alt="Image 3" style="width: 100%; border-radius: 10px;">
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Right Side Vision and Mission Content -->
                <div class="text-content">
                    <h2>About Us</h2>
                    <p>
                        R N S Institute of Technology (RNSIT) established in the year 2001, is the brainchild of the Group Chairman, 
                        Dr. R. N. Shetty. The institution was founded with a sole purpose of imparting quality education in Engineering, 
                        Technology, and Management with a difference. RNSIT is a place where you get knowledge, friends for life, memories, and a bright career.
                    </p>
                    <h2>Vision</h2>
                    <p>Building RNSIT into a World-Class Institution.</p>
                    <h2>Mission</h2>
                    <p>To impart high-quality education in Engineering, Technology, and Management with a difference, enabling students to excel in their career by:</p>
                    <ul>
                        <li>Attracting quality students and preparing them with a strong foundation in fundamentals.</li>
                        <li>Imparting value-based, need-based, choice-based, and skill-based professional education.</li>
                        <li>Promoting excellence in Teaching, Research, and Consultancy.</li>
                        <li>Exposing students to emerging frontiers of knowledge in various domains.</li>
                        <li>Providing freedom of action and choice for all stakeholders.</li>
                    </ul>
                </div>
            </div>


            <!-- Footer Section -->
            <div class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h4>RNSIT College</h4>
                            <p><strong>Address:</strong> RNS Institute of Technology, Bangalore, Karnataka, India</p>
                            <p><strong>Phone:</strong> +91 80286 11880 / 1 /2</p>
                            <p><strong>Email:</strong> info@rnsit.edu.in</p>
                        </div>
                        <div class="col-md-4">
                            <h4>Follow Us</h4>
                            <ul class="social-media-links">
                                <li><a href="https://www.facebook.com/rnsit" target="_blank">Facebook</a></li>
                                <li><a href="https://twitter.com/rnsit" target="_blank">Twitter</a></li>
                                <li><a href="https://www.linkedin.com/school/rnsit" target="_blank">LinkedIn</a></li>
                                <li><a href="https://www.instagram.com/rnsit" target="_blank">Instagram</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h4>Quick Links</h4>
                            <ul>
                                <li><a href="aboutus.jsp">About Us</a></li>
                                <li><a href="contactus.jsp">Contact Us</a></li>
                                <li><a href="privacy.jsp">Privacy Policy</a></li>
                                <li><a href="terms.jsp">Terms of Service</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <p class="text-center">&copy; 2024 RNSIT College | All Rights Reserved</p>
            </div>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>

	<!-- Main -->
	<script src="js/main.js"></script>
        <script>
            // Initialize Owl Carousel
            $(document).ready(function(){
                $("#slider-carousel").owlCarousel({
                    items: 1, // Show one image at a time
                    loop: true, // Infinite loop
                    autoplay: true, // Auto slide
                    autoplayTimeout: 3000, // Delay between slides (in ms)
                    autoplayHoverPause: true, // Pause on hover
                    nav: true, // Show navigation arrows
                    navText: ['&#10094;', '&#10095;'], // Customize navigation arrows
                });
            });
        </script>



	</body>
</html>

