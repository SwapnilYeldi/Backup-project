<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ include file="Header.jsp"%>
<%@page isELIgnored="false"%>
<html>
<head>
<style type="text/css">
#para {
	text-align: left;
	font-size: 120%;
	/*color: blue;*/
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Viewproduct</title>
</head>
<body>

	<div style="text-align: right; margin-top: 70px; margin-right: 20px;">
		<security:authorize access="hasRole('ROLE_USER')">
			<url:url value="/cart/addToCart/${id}" var="url4"></url:url>
			<a href="${url4}"><button type="button" class="btn btn-info">
					<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button></a>
		</security:authorize>
	</div>

	<div style="text-align: center;">
		<url:url value="/resources/images/${id }.png" var="url"></url:url>
		<img src="${url }" height="280">
	</div>
	<br>
	<div style="margin-top: 50px;" id="para">

		<p>
			<!-- Showing Product Details -->
		<ul>
			<li>Product Name: ${product.name }</li>
			<li>Product Price: ${product.price }</li>
			<li>Product Manufacturer: ${product.manufacturer }</li>
			<li>Product Discription: ${product.description }</li>
			<div style="background-color: white; color: green">
				<li><c:if test="${product.unitInStock>=1 }">
						<p>
							<big>In Stock</big>
						</p>
					</c:if>
			</div>

			<div style="background-color: white; color: red">
				<c:if test="${product.unitInStock<=0 }">
					<p>Stock: Out of Stock</p>
				</c:if>
				</li>
			</div>
			</li>
		</ul>

		<div style="text-align: center; font-size: 120%;">
			<url:url value="/all/product/productlist" var="url"></url:url>
			<a href="${url }">Browse All Products</a>
		</div>

	</div>

</body>
<%@include file="Footer.jsp"%>
</html>