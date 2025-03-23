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
        </style>
	</head>
        <%@page import="java.sql.*"%>
<%@page import="dbconnection.Dbconnection,java.net.*,java.io.*,java.util.*"%>
<%@page import=" com.google.zxing.BarcodeFormat"%>
<%@page import=" com.google.zxing.EncodeHintType"%>
<%@page import=" com.google.zxing.MultiFormatWriter"%>
<%@page import=" com.google.zxing.NotFoundException"%>
<%@page import=" com.google.zxing.WriterException"%>
<%@page import=" com.google.zxing.client.j2se.MatrixToImageWriter"%>
<%@page import="com.google.zxing.common.BitMatrix"%>
<%@page import=" com.google.zxing.qrcode.decoder.ErrorCorrectionLevel"%>
 <%@page import ="qrpackage.*"%>


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
							<li ><a href="studentpage.jsp">Home</a></li>
							<li><a href="downloadcertificate.jsp">Download Certificate</a></li>
                                                        <li class="active"><a href="studentviewhash.jsp">View Hash</a></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
 
            
           <div align="center"><span class="formhead">VIEW HASH</span></div>
  <center>
         
              
              <%
              try
              {
                   Socket soc=new Socket("localhost",3000);
            System.out.println("socket conneted");
            ObjectOutputStream oos=new ObjectOutputStream(soc.getOutputStream());
            ObjectInputStream oin=new ObjectInputStream(soc.getInputStream());
            System.out.println("streams created");
            
            oos.writeObject("GETMYHASH");
            oos.writeObject(session.getAttribute("usn"));
           
            String reply=(String)oin.readObject();
            
            if (reply.equals("NOTFOUND"))
            {
               out.println("<h1 center>NO DETAILS FOUND IN BLOCKCHAIN!</h1>");
            }
            else
            {
                out.println("<h4 center>Your Hash: "+reply+"</h4>");
                
                
                //generate hash
                String path = "C:\\QRCODE\\"+session.getAttribute("usn").toString()+".png";
                String t1=session.getAttribute("usn").toString()+"\n"+reply;
		// Encoding charset
		String charset = "UTF-8";

		Map<EncodeHintType, ErrorCorrectionLevel> hashMap
			= new HashMap<EncodeHintType,
						ErrorCorrectionLevel>();

		hashMap.put(EncodeHintType.ERROR_CORRECTION,
					ErrorCorrectionLevel.L);
                
                createqr qr=new createqr();
		qr.createQR(t1, path, charset, hashMap, 200, 200);
                %>
                <img src="view.jsp?id=<%=path%>" width="200" height="200" />
                <%
            }
            
             
                  
              }
              catch(Exception e)
              {
                  System.out.println(e);
              }
              
              
              
              %>
              
           
       
  </center>
		
		
	    <div align="center">
	    
              
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

