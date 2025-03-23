<%@page import="mail.Sendmail"%>
<%@page import="javax.mail.MessagingException"%>
<%
    // Retrieve data from the form
    String studentEmail = request.getParameter("email");
    String studentUSN = request.getParameter("usn"); // Get USN from the form
    String issueDetails = request.getParameter("message");
    String adminEmail = "harshithabh370@gmail.com"; // Replace with admin's email

    Sendmail mailSender = new Sendmail();
    try {
        mailSender.sendIssueEmail(studentEmail, adminEmail, issueDetails, studentUSN);
        out.println("<script>alert('Issue reported successfully!');</script>");
    } catch (MessagingException e) {
        out.println("<script>alert('Failed to send the issue email. Please try again later.');</script>");
        e.printStackTrace();
    }

    // Redirect to downloadcertificate.jsp after showing the alert
    response.setHeader("Refresh", "2; URL=downloadcertificate.jsp");
%>
