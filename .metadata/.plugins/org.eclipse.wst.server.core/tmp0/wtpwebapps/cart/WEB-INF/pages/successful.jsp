<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file ="Header.jsp" %>
<body style="margin-top: 80px">

<h1 align="center" style="color: green;">Successfully added</h1>

<div style="text-align: center; margin-top: 70px; margin-right: 20px;">
<security:authorize access="hasRole('ROLE_USER')">
					<url:url value="/cart/ViewCart" var="url9"></url:url>
					<a href="${url9}"><button type="button" class="btn btn-success">
					<span class="glyphicon glyphicon-shopping-cart"></span> Move to Cart
				</button></a>
					
				</security:authorize>
				</div>
				
						<div class="content">
			<fieldset>
				<legend>Move to cart</legend>
 
				<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "memberShip" is mapped in FlowController mapping -->
				<a href="${pageContext.request.contextPath}memberShip.obj" style="margin:50;">Welcome to cart</a>
			</fieldset>

</body>
</html>