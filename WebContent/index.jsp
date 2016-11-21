<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL EL MySQL CRUD</title>
</head>
<body>

 <h1>Choose Option</h1>
        <a href="insert.jsp">Insert Record</a><p></p>
        <a href="display.jsp">Display Record</a>
</body>

<!-- 

SQL Script

create table ajaxdb;

use ajaxdb;

create table product (id int primary key auto_increment,
						pname nvarchar(30), quantity int);
						
insert into product values (1,'printer',30);
insert into product values (2,'pen',40);


 -->
</html>