<%@ page import ="java.sql.*" %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="dangnhap.jsp">Please Login</a>
<%} else {
%>
	<%

        String redirectURL = "HVindex.jsp";

        response.sendRedirect(redirectURL);

    %>

<%
    }
%>