<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<title>ProductForm</title>
<link href="resources/css/background.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<%@ include file="Header.jsp"%>


	<div class="container wrapper" style="margin-top: 50px;">
		<div class="container">
			<url:url var="url" value="/admin/product/saveproduct"></url:url>
			<form:form action="${url }" modelAttribute="product" method="post"
				enctype="multipart/form-data">

				<div class="form-group">
					<label for="id"></label>
					<form:hidden path="id"></form:hidden>
					<form:errors path="id" cssStyle="color:red"></form:errors>
				</div>
				<div class="row">
					<div class="form-group col-xs-3">
						<label for="name">Product Name</label>
						<form:input path="name" placeholder="Enter Product Name"
							class="form-control"></form:input>
						<form:errors path="name" cssStyle="color:red"></form:errors>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-xs-3">
						<label for="description">Enter Description</label>
						<form:input path="description" placeholder="Description"
							class="form-control"></form:input>
						<form:errors path="description" cssStyle="color:red"></form:errors>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-xs-3">
						<label for="manufacturer">Product Manufacturer</label>
						<form:input path="manufacturer" placeholder="Enter Manufacturer"
							class="form-control"></form:input>
						<form:errors path="manufacturer" cssStyle="color:red"></form:errors>

					</div>
				</div>

				<div class="row">
					<div class="form-group col-xs-3">
						<label for="price">Product Price</label>
						<form:input path="price" class="form-control"></form:input>
						<form:errors path="price" cssStyle="color:red"></form:errors>

					</div>
				</div>

				<div class="row">
					<div class="form-group col-xs-3">
						<label for="unitInStock">Unit In Stock</label>
						<form:input path="unitInStock" class="form-control"></form:input>
						<form:errors path="unitInStock" cssStyle="color:red"></form:errors>

					</div>
				</div>


				<div class="form-group">
					<label for="category">Select Category</label>
					<c:forEach items="${categorydetails }" var="c">

						<form:radiobutton path="category.cid" value="${c.cid }" />
						${c.categoryDetails }

					</c:forEach>
					<form:errors path="category" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<label for="image">Upload Image</label> <input type="file"
						name="image">
				</div>

				<c:if test="${product.id==0}">
					<input type="submit" class="btn btn-primary" value="Add Product">
				</c:if>

				<c:if test="${product.id!=0}">
					<input type="submit" class="btn btn-primary" value="Edit Product">
				</c:if>

			</form:form>

		</div>

	</div>
</body>
<%@ include file="Footer.jsp"%>
</html>