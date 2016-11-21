<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Records</title>
</head>
 <body>                     
                           
      <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ajaxdb" user="root"  password="root"/>
       
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product where id=?;
            <sql:param value="${param.id}" />
        </sql:query>
        <form action="updatedb.jsp" method="post">
            <table border="1" width="40%">
                <caption>Update Product</caption>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.id}" name="id"/>
                            <input type="text" value="${row.pname}" name="pname"/></td>
                        <td><input type="text" value="${row.quantity}" name="qty"/></td>
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="index.jsp">Go Home</a>
        </form>
    </body>
</html>