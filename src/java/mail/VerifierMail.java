package mail;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public class VerifierMail {

    public void sendCertificateMismatchEmail(String studentEmail, String studentUSN, String verifierMessage) throws MessagingException {
        String senderHost = "smtp.gmail.com";
        String senderPort = "465";

        String subject = "Certificate Verification Failed";
        String messageContent = "Dear Student,\n\n" +
                "We have verified the certificate associated with the provided USN, but unfortunately, it does not match the certificate details.\n\n" +
                "Provided USN: " + studentUSN + "\n" +
                "Verifier's Note: " + verifierMessage + "\n\n" +
                "If this is a mistake, please contact the administrator for further assistance.\n\n" +
                "Thank you.";

        Properties props = new Properties();
        props.put("mail.smtp.host", senderHost);
        props.put("mail.smtp.port", senderPort);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", senderPort);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        try {
            // SMTP account details
            String smtpEmail = "p39779186@gmail.com"; // Replace with your SMTP email
            String smtpPassword = "etgnwwancnjwddwu"; // Replace with your SMTP password

            Authenticator auth = new SMTPAuthenticator(smtpEmail, smtpPassword);
            Session session = Session.getInstance(props, auth);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(messageContent);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(smtpEmail)); // Use default SMTP email
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(studentEmail));
            Transport.send(msg);

            System.out.println("Certificate mismatch email sent successfully!");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    class SMTPAuthenticator extends Authenticator {
        private final String smtpEmail;
        private final String smtpPassword;

        public SMTPAuthenticator(String smtpEmail, String smtpPassword) {
            this.smtpEmail = smtpEmail;
            this.smtpPassword = smtpPassword;
        }

        public PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(smtpEmail, smtpPassword);
        }
    }
}

