<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="container-fluid" style="margin-top: 100px;">

		${error } ${logout } ${registrationSuccess }
		<form action="<c:url value="j_spring_security_check"></c:url>"
			method="post">
			<div class="row" style="font-weight: bold;">

				<div class="form-group col-xs-3">
					Enter Username <input type="text" name="j_username"
						class="form-control"><br> Enter Password <input
						type="password" name="j_password" class="form-control"><br>
					<!-- <div class="checkbox">
						<label><input type="checkbox" name="remember">
							Remember me</label>
					</div> -->
					<input type="submit" class="btn btn-primary" value="submit">
				</div>
			</div>
		</form>
	</div>


</body>
<%@include file="Footer.jsp"%>
</html>