<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>products</title>


</head>
<body>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>Products</h2>
			<hr />

			<input type="button" value="Add Customer"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-primary" />
				<br/><br/>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Product List</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>title</th>
							<th>price</th>
							<th>short_description</th>
							<th>details</th>
                                                        <th>duration</th>
                                                        <th>category</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempProduct" items="${products}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/product/updateForm">
								<c:param name="productId" value="${tempProduct.productId}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/product/delete">
								<c:param name="productId" value="${tempProduct.productId}" />
							</c:url>

							<tr>
								<td>${tempProduct.title}</td>
								<td>${tempProduct.price}</td>
								<td>${tempProduct.shortDescription}</td>
                                                                <td>${tempProduct.details}</td>
                                                                <td>${tempProduct.duration}</td>
                                                                <td>${tempProduct.category}</td>
                                                                
                            

								
							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
</body>

</html>









