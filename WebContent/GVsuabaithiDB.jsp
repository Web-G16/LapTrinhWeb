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
            UPDATE baithi SET tendethi=?,linkdethi=?,c1=?,c2=?,c3=?,c4=?,c5=?,c6=?,c7=?,c8=?,c9=?,c10=?,c11=?,c12=?,c13=?,c14=?,c15=?,c16=?,c17=?,c18=?,c19=?,c20=?
            WHERE id=${param.id } 
            <sql:param value="${param.TenBaiThi}" />
            <sql:param value="${param.LinkBaiThi}" />
            <sql:param value="${param.c1}" />
            <sql:param value="${param.c2}" />
            <sql:param value="${param.c3}" />
            <sql:param value="${param.c4}" />
            <sql:param value="${param.c5}" />
            <sql:param value="${param.c6}" />
            <sql:param value="${param.c7}" />
            <sql:param value="${param.c8}" />
            <sql:param value="${param.c9}" />
            <sql:param value="${param.c10}" />
            <sql:param value="${param.c11}" />
            <sql:param value="${param.c12}" />
            <sql:param value="${param.c13}" />
            <sql:param value="${param.c14}" />
            <sql:param value="${param.c15}" />
            <sql:param value="${param.c16}" />
            <sql:param value="${param.c17}" />
            <sql:param value="${param.c18}" />
            <sql:param value="${param.c19}" />
            <sql:param value="${param.c20}" />
        </sql:update>
        <c:choose>
        <c:when test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="GVdethi.jsp?IDKH=${param.idkh }">Go Home</a>          
        </c:when>
        <c:otherwise>
        	<font size="5" color='green'> change pass fail</font>
             <a href="GVdethi.jsp?IDKH=${param.idkh }">Go Home</a>  
        </c:otherwise>
        </c:choose>
    </body>
</html>