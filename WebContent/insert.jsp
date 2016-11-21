<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Record Insertion</title>
</head>
    <body>
        <form action="insertdb.jsp" method="post">
            <table border="1" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="3">Purchase Product</th>
                    </tr>
                    
                </thead>
                <tbody>
                    <tr>
                        <td><label>Product Name</label></td>
                        <td><input type="text" name="pname"/></td>
                    </tr>
                    <tr>
                        <td><label>Quantity</label></td>
                        <td><input type="text" name="qty"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="reset"/></td>
                    
                    </tr>
                    
                    
                </tbody>
            </table>
        </form>
        
        <font color="red">
        	<c:if test="${not empty param.errMsg}">
            	<c:out value="${param.errMsg}" />
            	<a href="index.jsp">Go Back</a>
        	</c:if>
        </font>
        
        <font color="green">
        	<c:if test="${not empty param.susMsg}">
            	<c:out value="${param.susMsg}" />
            	<a href="index.jsp">Go Back</a>
        	</c:if>
        </font>
 
    </body>
</html>