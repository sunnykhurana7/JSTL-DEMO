<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Records</title>
</head>
<script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
    </head>
    <body>
  
       <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ajaxdb" user="root"  password="root"/>
       
   
         <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>Product List</caption>
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="rowref" items="${result.rows}">
                    <tr>
                        <td><c:out value="${rowref.id}"/></td>
                        <td><c:out value="${rowref.pname}"/></td>
                        <td><c:out value="${rowref.quantity}"/></td>
                        <td><a href="update.jsp?id=<c:out value="${rowref.id}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?id=<c:out value="${rowref.id}"/>')">Delete</a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="index.jsp">Go Home</a>
    </center>
</body>
</html>