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
        /* Page background color */
         body {
            background-color: #f4f8fb; /* Light blue-gray background */
            font-family: 'Montserrat', sans-serif;
        }
        .navbar {
                border-bottom: 2px solid #fff;
            }

        .gtco-nav {
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f8f9fa;
            padding: 10px 0;
            margin-bottom: 20px;
        }
        .menu-1 {
            display: flex;
            justify-content: flex-end;
            
        }

         .menu-1 ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: flex-end;
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
            color: #007bff;
        }


        .page-title {
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            font-weight: bold;
            color: #333333;
        }

        /* Validation form styling */
        .validation-form {
            background-color: moccasin;
            border: 1px solid #ddd;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            width: 60%;
            margin: 20px auto;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .validation-form h1 {
            font-size: 20px;
            color: #333;
            text-align: center;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .form-group label {
            font-size: 14px;
            font-weight: bold;
            color: #555;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: slateblue;
            color: #ffffff;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>

	</head>
      
       
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">
            <div class="page-title">
                <h3> BlockChain Based Academic Credential Verification System</h3>
            </div>
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					<div class="col-sm-2 col-xs-12">
						<div id="gtco-logo"><a href="index.html"><h5></h5></div>
					</div>

					<div class="col-xs-10 text-right menu-1">
			
						<ul>
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About</a></li>
							<li class="has-dropdown">
								<a href="#">Login</a>
								<ul class="dropdown">
									<li><a href="adminlogin.jsp">Admin</a></li>
									<li><a href="studentlogin.jsp">Student</a></li>
                                                                        <li><a href="guest.jsp">Guest</a></li>
								</ul>
							</li>
				
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
 
           <p align="center"><font color="red">Welcome Guest</font></p>
    <div class="validation-form">
        <h1>Download Certificate</h1>
        <form name="downloadcertificate" action="guestvalidatehash" method="post">
            <div class="form-group">
                <label for="usn">Enter USN</label>
                <input type="text" id="usn" name="usn" required />
            </div>
            <div class="form-group">
                <label for="hash">Enter Hash Value</label>
                <input type="text" id="hash" name="hash" required />
            </div>
            <div class="form-group">
                <input type="submit" name="button" value="Validate and Download Certificate" />
            </div>
        </form>
        <%  
        try {
            if (request.getParameter("msg") != null) {
                if (request.getParameter("msg").equals("HASHVALIDATED")) {
                    out.println("<script>alert('Hash validated Successfully! Downloading Certificate!');</script>");
                    String file = request.getParameter("usn") + ".jpg";
                    String fpath1 = "C:\\download\\" + file;
        %>
                    <center>
                        <img src="view.jsp?id=<%=fpath1%>" width="200" height="200" />
                    </center>
        <%
                } else if (request.getParameter("msg").equals("INVALIDHASH")) {
                    out.println("<script>alert('Invalid Hash found!');</script>");
                }
            }
        } 
                catch(Exception e)
                {
                    out.println(e);
                    e.printStackTrace();

                }

                %>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
           <div class="validation-form">
            <h1>Send Certificate Mismatch Notification</h1>
            <form name="sendEmailForm" action="verifierSendEmail.jsp" method="post">
                <div class="form-group">
                    <label for="usn">Enter USN</label>
                    <input type="text" id="usn" name="usn" required />
                </div>
                <div class="form-group">
                    <label for="verifierMessage">Verifier's Message</label>
                    <textarea id="verifierMessage" name="verifierMessage" rows="4" required></textarea>
                </div>
                <div class="form-group">
                    <input type="submit" name="button" value="Send Notification" />
                </div>
            </form>
        </div>
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

	</body>
</html>

