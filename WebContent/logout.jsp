<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("dangnhap.jsp");
%>