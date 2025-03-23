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
            background-color: snow; /* Light blue background */
            font-family: 'Montserrat', sans-serif;
        }

        .page-title {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            margin-top: 20px;
            color: #333;
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

        table {
            border-collapse: collapse;
            margin: 20px auto;
            width: 70%;
            background-color: lemonchiffon; /* White table background */
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th {
            background-color: khaki; /* Steel blue header background */
            color: black;
            text-align: center;
            padding: 10px;
        }

        td {
            text-align: center;
            padding: 10px;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray background for even rows */
        }

        .formhead {
            font-size: 24px;
            color: lightsalmon;
            font-weight: bold;
            margin: 20px 0;
        }
    </style>
</head>
<%@page import="java.sql.*"%>
<%@page import="dbconnection.Dbconnection,java.net.*,java.io.*,java.util.*"%>
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
						<div id="gtco-logo"><a href="index.jsp"><h5></h5></div>
					</div>

					<div class="col-xs-10 text-right menu-1">
			
						<ul>
							<li ><a href="adminpage.jsp">Home</a></li>
							<li ><a href="registerstudent.jsp">Register Student</a></li>
                                                        <li ><a href="uploadcertificate.jsp">Upload Certificate</a></li>
                                                        <li class="active"><a href="viewhash.jsp">View Hash</a></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
 
		
  <div align="center"><span class="formhead">VIEW HASH</span></div>
  <center>
          <table width="50%" border="1" cellpadding="10" cellspacing="10">
              <tr>
                  <th>USN</th>
                  <th>HASH</th>
              </tr>
              
              <%
              try
              {
                   Socket soc=new Socket("localhost",3000);
            System.out.println("socket conneted");
            ObjectOutputStream oos=new ObjectOutputStream(soc.getOutputStream());
            ObjectInputStream oin=new ObjectInputStream(soc.getInputStream());
            System.out.println("streams created");
            
            oos.writeObject("GETALLHASH");
           
            String reply=(String)oin.readObject();
            
            if (reply.equals("SUCCESS"))
            {
                Vector v=(Vector) oin.readObject();
                
                for (int i=0;i<v.size();i++)
                    {
                    %>
                    <tr>
                    <%
                    String app=v.get(i).toString().trim();
                  
                    StringTokenizer st=new StringTokenizer(app,"$");
                    
                    while (st.hasMoreTokens())
                    {
                        %>
                            <td>
                            
                                <%=st.nextToken()%>
                           
                             </td>
                            <%
                    
                    }
                
                %>
                </tr>
                <%
                    }
            }
            else
            {
                out.println("<h1 center>NO DETAILS FOUND IN BLOCKCHAIN!</h1>");
            }
            
             
                  
              }
              catch(Exception e)
              {
                  System.out.println(e);
              }
              
              
              
              %>
              
           
          </table>
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

