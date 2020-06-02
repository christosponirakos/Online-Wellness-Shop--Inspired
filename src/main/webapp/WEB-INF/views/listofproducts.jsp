<%-- 
    Document   : productlist
    Created on : 07-May-2020, 13:37:33
    Author     : mac
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>products' List</title>
    </head>
    <body>
        <h1>products' List</h1>
        <table>
		<tr>
                    <td>ID</td><td>Title</td><td>Price</td><td>Shortdesc</td>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
                           
                            
                            <td>${product.productId}</td>
                            <td>${product.title}</td>
                            <td>${product.price}</td>
                            <td>${product.shortDescription}</td>
                            
			</tr>
		</c:forEach>
	</table>
        <div id="msg">${msg}</div>
    </body>
</html>
