<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
 <%
      String host = "smtp.gmail.com";
      String user=request.getParameter("email");//Your E-mail-Id
      String pass=request.getParameter("pass");     //your e-mail account password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
String to = "kietmathi77@gmail.com"; //recipient E-mail-Id
String from = request.getParameter("email"); // Your E-mail Id
String subject =request.getParameter("tieude");
String messageText = request.getParameter("noidung");
boolean sessionDebug = true;


Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");//port number 465 for Secure (SSL) and we can also            use port no 587 for Secure (TLS)
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);


Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);


Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html");


  boolean WasEmailSent;


 try {
	 Transport transport = mailSession.getTransport("smtp");
	 transport.connect(host, user, pass);	
      transport.sendMessage(msg, msg.getAllRecipients());
      out.println("Send Success");
      
      transport.close();
       WasEmailSent = true; // assume it was sent
     }

catch (Exception err) {
	out.println("send fail");
                       
                      }
                  
 
                  %>
