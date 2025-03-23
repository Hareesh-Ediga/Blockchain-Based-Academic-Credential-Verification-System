<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

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
	<title>Certificate Verify</title>
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
            font-family: 'Montserrat', sans-serif;
            background-color: #f5f5dc; /* Burlywood-like background color */
            margin: 0;
            padding: 0;
        }

        .header-title {
            text-align: center;
            font-size: 2.5em;
            font-weight: 700;
            color: #333;
            margin-top: 20px;
        }

        .gtco-nav {
            border: 2px solid #ccc;
            border-radius: 5px;
            background-color: #f8f9fa;
            padding: 10px 0;
            margin-bottom: 20px;
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

        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: calc(100vh - 150px); /* Subtracting navbar height */
            padding-top: 20px;
        }

        .form-card {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .form-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .form-card label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #555;
        }

        .form-card input[type="text"],
        .form-card input[type="email"],
        .form-card input[type="file"],
        .form-card select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-card input[type="text"]:focus,
        .form-card input[type="email"]:focus,
        .form-card input[type="file"]:focus,
        .form-card select:focus {
            border-color: #ff6347;
            outline: none;
        }

        .form-card input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-card input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .form-heading {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: sandybrown;
        }
        .form-select {
        width: 100%;
        height: 40px; /* Adjust height */
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        background-color: #fff;
        box-sizing: border-box; /* Ensure padding doesn't affect width */
    }

    .form-select:focus {
        border-color: #ff6347;
        outline: none;
    }
    </style>
</head>
<%@page import="java.sql.*"%>
<%@page import="dbconnection.Dbconnection"%>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">
                <div class="header-title">
                    <h3>Blockchain Based Academic Credential Verification System</h3>
                </div>
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					

					<div class="col-xs-10 text-right menu-1">
			
						<ul>
							<li ><a href="adminpage.jsp">Home</a></li>
							<li ><a href="registerstudent.jsp">Register Student</a></li>
                                                        <li class="active"><a href="uploadcertificate.jsp">Upload Certificate</a></li>
                                                        <li><a href="viewhash.jsp">View Hash</a></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
  <
		<div class="form-container">
                    <h2 class="form-heading">Upload Certificate</h2>
                    <form action="uploadcertificate" method="post" name="form1" enctype="multipart/form-data" class="form-card">
                        <label for="usn">USN</label>
                        <select name="usn" id="usn" required class="form-select">

                          <%
                          try
                          {
                              Connection con=new Dbconnection().getConnection();
            
                            PreparedStatement pst=con.prepareStatement("select usn from student");
                            ResultSet rs=pst.executeQuery();
                            while (rs.next())
                            {
                                out.println("<option>"+rs.getString(1).trim()+"</option>");
                            }
                              
                          }
                          catch(Exception e)
                          {
                              System.out.println(e);
                              e.printStackTrace();
                          }
                          %>
                      </select> 
                            <label for="t3">Upload Certificate</label>
                       <input type="file" name="t3" id="t3" required>

                       <input type="submit" name="button" id="button" value="Submit">
                   </form>
               </div>
		
		
	    <div align="center">
	    
                <%
                    if (request.getParameter("msg")!=null)
                    {
                        String msg=request.getParameter("msg");
                        
                        if (msg.equals("EXIST"))
                        {
                            out.println( "<script>alert('USN already registered!');</script>");
                        }
                        else
                        if (msg.equals("SUCCESS"))    
                        {
                            out.println( "<script>alert('Registeration Success');</script>");
                        }
                        else
                        if (msg.equals("CLOUDLOGINERROR"))    
                        {
                            out.println( "<script>alert('Cloud login Error');</script>");
                        }
                        else
                        if (msg.equals("HASHSAVESUCCESS"))    
                        {
                            out.println( "<script>alert('Hash successfully saved in blockchain');</script>");
                        }
                    }
                        
                
                %>				
					
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

	</body>
</html>

