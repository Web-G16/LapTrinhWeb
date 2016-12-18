<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import ="java.sql.*" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179275-group16.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="FZDool70036"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from members where email = 'request.getParameter("forgetemailId")' ;
            
        </sql:query>
        <c:forEach var="row" items="${result.rows}">
         
                                        <input type="text" value="${row.pass}" name="mess" >
        </c:forEach>
 <%
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data",
         "root", "123456");
	 Statement st = con.createStatement();
 	ResultSet rs;
 	rs = st.executeQuery("select * from members where email='" + request.getParameter("forgetemailId")+ "'");
      String host = "smtp.gmail.com";
      String user="kietmathi77";//Your E-mail-Id
      String pass="mrkiet12a1";     //your e-mail account password
	String messageText= null;
String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
String to = request.getParameter("forgetemailId"); //recipient E-mail-Id
String from = "kietmathi77@gmail.com"; // Your E-mail Id
String subject ="dia chi email cua ban la:";
if(rs.next())
{
 messageText = rs.getString(5);
}
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
	out.println("vui long kiem tra lai dia chi email");
                       
                      }
                  
 
                  %>
