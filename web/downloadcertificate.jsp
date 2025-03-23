<%-- 
    Document   : index
    Created on : 20 Dec, 2021, 11:23:13 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

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

        .form-container {
            background-color: moccasin; /* White box */
            margin: 40px auto;
            padding: 20px;
            width: 50%;
            border: 1px solid #ddd; /* Light border */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .form-title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
            color: #555555;
        }

        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: slateblue; /* Green background */
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color:lightsteelblue; /* Darker green on hover */
        }
        
        .form-group {
            margin-bottom: 15px;
            position: relative;
        }

        textarea {
            width: 100%; /* Full width */
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            resize: vertical; /* Allows resizing only vertically */
            min-height: 120px; /* Set the initial height of the textarea */
        }

        /* Styling the label */
        .textarea-label {
            display: block; /* Make the label appear above the textarea */
            margin-bottom: 5px; /* Add space between label and textarea */
            font-weight: bold; /* Make the label text bold */
            color: #555; /* Set the color to a subtle gray */
        }


    </style>
	</head>
      
       
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">
             <div class="page-title">
                 <h3>BlockChain Based Academic Credential Verification System</h3>
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
							<li class="active"><a href="downloadcertificate.jsp">Download Certificate</a></li>
                                                        <li><a href="studentviewhash.jsp">View Hash</a></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
 
           
             <%@page import="dbconnection.Dbconnection"%>
		  <%@page import ="java.sql.*"%>
          <%@page import="java.util.*,java.io.*"%>
             <%@page import="ftp.MyFTPClient1"%>
          <%   
                                          
try
{
    
   Connection con=Dbconnection.getConnection(); 

    PreparedStatement pst=con.prepareStatement("select * from student where usn=?");
    pst.setString(1,session.getAttribute("usn").toString());
    ResultSet rs=pst.executeQuery();
    rs.next();
    String name=rs.getString(2);
    String mobile=rs.getString(3);
    String email=rs.getString(4);
    String fpath=rs.getString(6);
    
   
   %>

		<div class="form-container">
                    <div class="form-title">Download Certificate</div>
                    <form name="downlaodcertificate" action="validatehash" method="post">
                        <input type="hidden" name="usn" value="<%=session.getAttribute("usn").toString()%>" />
                        <div class="form-group">
                            <label>Enter Hash Value:</label>
                            <input type="text" name="hash" required />
                        </div>
                        <div class="form-group">
                            <input type="submit" name="button" id="button" value="Validate and download certificate" />
                        </div>
                    </form>
                </div>
                
            <%
    
    
    
                    if (request.getParameter("msg")!=null)
                    {
                        if (request.getParameter("msg").equals("HASHVALIDATED"))
                        {
                            out.println( "<script>alert('Hash validated Successfully! Downloading Certificate!');</script>");
                            /*
                            MyFTPClient1 ftp=new MyFTPClient1();
                            if (ftp.status==false)
                            {
                               out.println( "<script>alert('Could not conenct to cloud server!');</script>");
                            
                            }
                            else
                            {
                                String file=session.getAttribute("usn").toString()+".jpg";
                                String fpath1="C:/download/"+file;
                                boolean status=ftp.download("./"+file, "C:/download/"+file);
                                ftp.ftpDisconnect(); 
                                if (status)
                                {
                                    out.println( "<script>alert('Certificate Downloaded!');</script>");
                                    
                                    
                                }
                                else
                                {
                                    out.println( "<script>alert('Certificate Download failed!');</script>");
                                }
                                    
                                    */
                            String file=session.getAttribute("usn").toString()+".jpg";
                                String fpath1="C:/download/"+file;
                            %>
                            <center>
                                    <img src="view.jsp?id=<%=fpath1%>" width="200" height="200" />
                            </center>
                                    <%
                                
                            
                        }
                        else
                        if (request.getParameter("msg").equals("INVALIDHASH"))
                        {
                            out.println( "<script>alert('Invalid Hash found!');</script>");
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
        

                <div class="form-container">
            <div class="form-title">Report Issue: Invalid Certificate</div>
            <form action="sendIssueMail.jsp" method="post">
                <input type="hidden" name="usn" value="<%= session.getAttribute("usn").toString() %>" />
                <div class="form-group">
                    <label for="email">Your Email:</label>
                    <input type="text" id="email" name="email" placeholder="Enter your email" required />
                </div>
                <div class="form-group">
                    <label for="message">Issue Details:</label>
                    <textarea name="message" id="message" placeholder="Describe the issue with the certificate" required></textarea>
                </div>
                <div class="form-group">
                    <input type="submit" value="Send Issue to Admin" />
                </div>
            </form>
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

