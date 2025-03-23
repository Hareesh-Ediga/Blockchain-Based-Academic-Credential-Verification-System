<%@page import="dbconnection.Dbconnection"%>
<%@page import="mail.VerifierMail"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="java.sql.*"%>
<%
    // Retrieve the USN and verifier's message from the form
    String studentUSN = request.getParameter("usn");
    String verifierMessage = request.getParameter("verifierMessage");

    String studentEmail = null;

    try {
        // Connect to the database
        Connection con = Dbconnection.getConnection();

        // Query to fetch the student's email based on the provided USN using PreparedStatement
        String query = "SELECT Emailid FROM student WHERE usn = ?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, studentUSN); // Use the USN from the form
        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            // Retrieve the email address from the database
            studentEmail = rs.getString("Emailid");
        } else {
            // If no student is found, alert the user and redirect back
            out.println("<script>alert('USN not found in the database.');window.location='guest.jsp';</script>");
        }

        // Close database connection
        rs.close();
        pst.close();
        con.close();

    } catch (Exception e) {
        // If there's a database connection error, display the error message
        out.println("<script>alert('Database connection failed: " + e.getMessage() + "');window.location='guest.jsp';</script>");
        e.printStackTrace();
    }

    // If the student's email is found, send the email
    if (studentEmail != null) {
        VerifierMail mailSender = new VerifierMail();
        try {
            // Send the mismatch email to the student
            mailSender.sendCertificateMismatchEmail(studentEmail, studentUSN, verifierMessage);
            out.println("<script>alert('Mismatch email sent to the student successfully.');window.location='guest.jsp';</script>");
        } catch (MessagingException e) {
            // If there's an error sending the email, alert the user and redirect back
            out.println("<script>alert('Failed to send mismatch email to the student.');window.location='guest.jsp';</script>");
            e.printStackTrace();
        }
    }
%>
