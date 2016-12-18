<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179275-group16.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="FZDool70036"/>
         <sql:update dataSource="${dbsource}" var="count">
            INSERT INTO thongbao( NgayThongBao, NoiDungThongBao, TenMonHoc  ) VALUES (CURDATE(),?,?);
            
         
            <sql:param value="${param.noidung}" />
            <sql:param value="${param.TenKH}" />
            
        </sql:update>
        <c:choose>
        <c:when test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="GVindex.jsp">Go Home</a>          
        </c:when>
        <c:otherwise>
        	<font size="5" color='green'> change pass fail</font>
              <a href="GVindex.jsp">Go Home</a>   
        </c:otherwise>
        </c:choose>
    </body>
</html>