<%@ page import="java.io.UnsupportedEncodingException"%>
<%@ page import="java.util.Properties"%>
<%@ page import="javax.mail.Message"%>
<%@ page import="javax.mail.MessagingException"%>
<%@ page import="javax.mail.PasswordAuthentication"%>
<%@ page import="javax.mail.Session"%>
<%@ page import="javax.mail.Transport"%>
<%@ page import="javax.mail.internet.AddressException"%>
<%@ page import="javax.mail.internet.InternetAddress"%>
<%@ page import="javax.mail.internet.MimeMessage"%>
<%@ page import="java.sql.*" %>

<%		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/holmes","root","");
		Statement st = con.createStatement();
		String sql1 = " select * from status s,holmes h where (s.Id='"+request.getParameter("Id")+"' and s.Status='"+request.getParameter("status")+"') and s.id=h.id; ";
		ResultSet rs = st.executeQuery(sql);
		
    
		


		
		final String username = "holmeslaundry@gmail.com";
        final String password = "itsnotapassword";

        Properties props = new Properties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session sessio = Session.getInstance(props,
          new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
          });

        try {

            Message message = new MimeMessage(sessio);
            message.setFrom(new InternetAddress("holmeslaundry@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(rs.getString("Email_Id")));
            message.setSubject("yo");
            message.setText(rs.getString("Status"));

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
%>