<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <title>JINSERT Operation</title>
        <meta charset="utf-8">
    </head>
    <body>
	
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           

                           user="root"  password="RAYatq42331"/>

         	<sql:update dataSource="${dbsource}" var="result">
            INSERT INTO members( name, uname , email , pass , birdday , phone ,role) VALUES (?,?,?,?,?,?,?);
            
            <sql:param value="${param.fullname}" />
            <sql:param value="${param.xfullname}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.password}" />
            <sql:param value="${param.birthday}" />
            <sql:param value="${param.phone}" />
            <sql:param value="${'user'}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="dangnhap.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 

 		
        
 
 
    </body>
</html>