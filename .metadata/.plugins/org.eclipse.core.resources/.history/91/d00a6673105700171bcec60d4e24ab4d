<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
th {
	background-color: #000000;
	color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="Header.jsp"%>

	<div class="container" style="margin-top: 80px">
		<h1 align="center" style="color: blue;">
			<b><u>Cart</u></b>
		</h1>


		<table class="table table-bordered" border="1">


			<thead>
				<tr>
					<th>Id</th>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Delete</th>
				</tr>

			</thead>
			<tbody>

				<c:forEach items="${cartItems}" var="c">

					<tr>
						<td>${c.customer.id}</td>
						<td>${c.product.name }</td>

						<td>${c.quantity}</td>
						<td align="center">${c.totalprice}</td>

						<td><url:url value="/cart/deleteCartItem/${c.cartItemId }"
								var="url1"></url:url> <a href="${url1}"><span
								class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>

			<tbody>
				<tr>

					<th colspan="3">Grand Total</th>
					<td colspan="2" align="center">${grandtotal }</td>

				</tr>
			</tbody>
			
		</table>
	</div>

	<div align="center">
		<url:url value="/cart/deleteAllCartItem" var="url2"></url:url>
		<a href="${url2 }" class="btn btn-primary" role="button">Remove
			All Items</a>
	</div>

</body>
</html>