<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>

<%@page isELIgnored="false"%>
<html>
<head>
<style>
h3 {
	text-align: center;
}

div.boxed {
	margin: auto;
	border: 3px solid;
	padding: 10px;
}
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>

<script type="text/javascript">
	function confirm_pass() {
		if (document.getElementById('pwd1').value == document
				.getElementById('pwd2').value) {

			document.getElementById('message').style.color = 'green';
			document.getElementById('message').innerHTML = 'Matching';
		} else {

			document.getElementById('message').style.color = 'red';
			document.getElementById('message').innerHTML = 'Not Macthing';
		}

	}
</script>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="container wrapper" style="margin-top: 100px;">
		<div class="container">
			<url:url value="/all/register" var="url"></url:url>
			<form:form action="${url }" modelAttribute="customer" method="post">
				<div class="boxed" style="border: 1px solid">
					<h3>Enter Personal Details</h3>
					<div class="form-group">
						<label for="id"></label>
						<form:hidden path="id"></form:hidden>
						<form:errors path="id" cssStyle="color:red"></form:errors>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="firstname">Enter first name</label>
							<form:input path="firstname" class="form-control"
								placeholder="first name"></form:input>
							<form:errors path="firstname" cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="lastname">Enter last name</label>
							<form:input path="lastname" class="form-control"
								placeholder="last name"></form:input>
							<form:errors path="lastname" cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="email">Enter email</label>
							<form:input path="email" class="form-control" placeholder="email"></form:input>
							<form:errors path="email" cssStyle="color:red"></form:errors>
							<span style="color: red">${duplicateEmail }</span>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="phone">Enter phone number</label>
							<form:input path="phone" class="form-control" placeholder="phone"></form:input>
							<form:errors path="phone" cssStyle="color:red"></form:errors>
						</div>
					</div>
				</div>

				<br>

				<div class="boxed" style="border: 1px solid">
					<h3>Enter Username and Password</h3>
					<div class="row">
						<div class="form-group col-xs-3">
							<label for="users.username">Enter username</label>
							<form:input path="users.username" class="form-control"
								placeholder="username"></form:input>
							<form:errors path="users.username" cssStyle="color:red"></form:errors>
							<span style="color: red">${duplicateUsername }</span>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="users.password">Enter password</label>
							<form:input path="users.password" type="password"
								class="form-control" id="pwd1" placeholder="Password"></form:input>
							<form:errors path="users.password" cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label>Confirm password</label> <input type="password"
								name="confirm_password" id="pwd2"
								placeholder="Re-enter Password" class="form-control"
								onBlur='confirm_pass();' /> <span id='message'></span>
						</div>
					</div>
				</div>
				<br>

				<div class="boxed" style="border: 1px solid">
					<h3>Enter Billing Address</h3>
					<div class="row">
						<div class="form-group col-xs-3">
							<label for="billingAddress.streetname">Enter Streetname</label>
							<form:input path="billingAddress.streetname" class="form-control"
								placeholder="street name"></form:input>
							<form:errors path="billingAddress.streetname"
								cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="billingAddress.apartmentnumber">Enter
								Apartment number</label>
							<form:input path="billingAddress.apartmentnumber"
								class="form-control" placeholder="apartment number"></form:input>
							<form:errors path="billingAddress.apartmentnumber"
								cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="billingAddress.city">Enter City</label>
							<form:input path="billingAddress.city" class="form-control"
								placeholder="city"></form:input>
							<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="billingAddress.country">Enter country</label>
							<form:input path="billingAddress.country" class="form-control"
								placeholder="country"></form:input>
							<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="billingAddress.zipcode">Enter zipcode</label>
							<form:input path="billingAddress.zipcode" class="form-control"
								placeholder="zip code"></form:input>
							<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
						</div>
					</div>
				</div>
				<br>

				<div class="boxed" style="border: 1px solid">
					<h3>Enter Shipping Address</h3>
					<div class="row">
						<div class="form-group col-xs-3">
							<label for="shippingAddress.streetname">Enter Streetname</label>
							<form:input path="shippingAddress.streetname"
								class="form-control" placeholder="street name"></form:input>
							<form:errors path="shippingAddress.streetname"
								cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="shippingAddress.apartmentnumber">Enter
								Apartment number</label>
							<form:input path="shippingAddress.apartmentnumber"
								class="form-control" placeholder="apartment number"></form:input>
							<form:errors path="shippingAddress.apartmentnumber"
								cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="shippingAddress.city">Enter City</label>
							<form:input path="shippingAddress.city" class="form-control"
								placeholder="city"></form:input>
							<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="shippingAddress.country">Enter country</label>
							<form:input path="shippingAddress.country" class="form-control"
								placeholder="country"></form:input>
							<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-xs-3">
							<label for="shippingAddress.zipcode">Enter zipcode</label>
							<form:input path="shippingAddress.zipcode" class="form-control"
								placeholder="zip code"></form:input>
							<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>
						</div>
					</div>
				</div>
				<input type="submit" class="btn btn-primary" value="Register">

			</form:form>
		</div>

	</div>

</body>
<%@include file="Footer.jsp"%>
</html>
