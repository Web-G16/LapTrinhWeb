<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 


<html>
	<head>
		<title>nhap diem</title>
	</head>
	
	<body>
	
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179275-group16.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="FZDool70036"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO diem( IDKH, Tuan , TenHV , Diem, DiemThi, trangthai) VALUES (?,?,?,?,'',1)
            <sql:param value="${param.IDKH}" /> 
            <sql:param value="${param.Tuan}" /> 
            <sql:param value="${param.TenHV}" />
            <sql:param value="${param.Diem}" />
           
            
        </sql:update>
          <c:choose>
        <c:when test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
            <% String IDKH=request.getParameter("IDKH");%>
              <a href="GVxembaitap.jsp?IDKH=<%=IDKH%>">Go Home</a>          
        </c:when>
        <c:otherwise>
        	<font size="5" color='green'> change pass fail</font>
        	
              <% String IDKH=request.getParameter("IDKH");%>
              <a href="GVxembaitap.jsp?IDKH=<%=IDKH%>">Go Home</a>          
        </c:otherwise>
        </c:choose>

 
	</body>
</html>