<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Database</title>
</head>
<body>
         
       <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ajaxdb" user="root"  password="root"/>
                             
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE product SET pname = ?, quantity=? WHERE id=${param.id}
            <sql:param value="${param.pname}" />
            <sql:param value="${param.qty}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated successfully.</font>
              <a href="index.jsp">Go Home</a>          
        </c:if>
    </body>
</html>