<%-- 
    Document   : view
    Created on : Dec 13, 2016, 10:25:35 AM
    Author     : java4
--%>


<%@ page import="java.io.*"%>

<%
    String image = "";
    
    byte[] imgData = null;
  
    String id = request.getParameter("id");
    System.out.println(id);
    try {
        
            FileInputStream fin=new FileInputStream(id);
            imgData=new byte[fin.available()];
            fin.read(imgData);
            fin.close();
            //imgData = image.getBytes(1, (int) image.length());
        
// display the image
        response.setContentType("image/gif");
        OutputStream o = response.getOutputStream();
        o.write(imgData);
        o.flush();
        o.close();
    } catch (Exception e) {
        out.println("Unable To Display image");
        out.println("Image Display Error=" + e.getMessage());
        return;
    } finally {
         
    }

%> 