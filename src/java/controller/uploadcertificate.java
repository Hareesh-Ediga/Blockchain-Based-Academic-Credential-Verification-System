/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import ftp.MyFTPClient1;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.security.MessageDigest;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
@WebServlet(name = "uploadcertificate", urlPatterns = {"/uploadcertificate"})
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class uploadcertificate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String usn = request.getParameter("usn");
            System.out.println(usn);
         
            InputStream inputStream = null;
            Part filePart = request.getPart("t3");
            if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
            }
            
            HttpSession session=request.getSession();
           
            File f=new File("C:\\download");
                System.out.println(f.getPath());
                if (!f.exists())
                    f.mkdir();
              
            byte[] b = new byte[inputStream.available()];
                inputStream.read(b);
                //pst2.setBytes(6, b);
               filePart.write(f.getPath()+"\\"+usn+".jpg");
             //  pst2.setString(6,f.getPath()+"\\"+usn+".jpg");
                
              File f1=new File(f.getPath()+"\\"+usn+".jpg");
              
              FileOutputStream fout=new FileOutputStream("C:/download/"+usn+".jpg");
              fout.write(b);
              fout.close();
              
              MyFTPClient1 ftp=new MyFTPClient1();
              if (ftp.status==false)
              {
                  response.sendRedirect("uploadcertificate.jsp?msg=CLOUDLOGINERROR");
              }
              ftp.ftpUpload(f1.getPath(),f1.getName(),".");
              ftp.ftpDisconnect();   
              
               MessageDigest mdigest = MessageDigest.getInstance("SHA-256");
 
        // Get the checksum
        String checksum = checksum(mdigest, f1);
 
        // print out the checksum
        System.out.println(checksum);
            session.setAttribute("usn", usn);
            session.setAttribute("fpath", f1.getPath());
            session.setAttribute("hash", checksum);
            
            response.sendRedirect("uploadsuccess.jsp?msg=SUCCESS");
        }
        catch(Exception e)
        {
            System.out.println(e);
            e.printStackTrace();
        }
    }
    
    private static String checksum(MessageDigest digest,File file)
        throws IOException
    {
        // Get file input stream for reading the file
        // content
        FileInputStream fis = new FileInputStream(file);
 
        // Create byte array to read data in chunks
        byte[] byteArray = new byte[1024];
        int bytesCount = 0;
 
        // read the data from file and update that data in
        // the message digest
        while ((bytesCount = fis.read(byteArray)) != -1)
        {
            digest.update(byteArray, 0, bytesCount);
        };
 
        // close the input stream
        fis.close();
 
        // store the bytes returned by the digest() method
        byte[] bytes = digest.digest();
 
        // this array of bytes has bytes in decimal format
        // so we need to convert it into hexadecimal format
 
        // for this we create an object of StringBuilder
        // since it allows us to update the string i.e. its
        // mutable
        StringBuilder sb = new StringBuilder();
       
        // loop through the bytes array
        for (int i = 0; i < bytes.length; i++) {
           
            // the following line converts the decimal into
            // hexadecimal format and appends that to the
            // StringBuilder object
            sb.append(Integer
                    .toString((bytes[i] & 0xff) + 0x100, 16)
                    .substring(1));
        }
 
        // finally we return the complete hash
        return sb.toString();
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
