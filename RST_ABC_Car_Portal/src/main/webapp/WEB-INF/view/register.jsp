<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<!-- Bootstrap Link -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Google Font -->
<link rel="preconnect" href="https://fonts.gstatic.com">

<link
	href="https://fonts.googleapis.com/css2?family=Crimson+Text&family=Libre+Baskerville:ital@1&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Cardo&family=Crimson+Text&display=swap"
	rel="stylesheet">

<link href="/RST_ABC_Car_Portal/css/style.css" rel="stylesheet" />

</head>
<body>

	<%@ include file="header.jsp"%>

	<!-- Body -->
	<div class="container-fluid register">
		<div class="row">
			<!-- Left part -->
			<div class="col-sm-3 register-left">
				<img
					src="https://www.freepnglogos.com/uploads/cleveland-auto-show-car-logo-png-25.png"
					alt="" />
				<h2>WELCOME</h2>
				<h5>If you have an account, You can Sign up Here!</h5>
				<a class="btn btn-info" href="login.html" role="button">Login</a>
			</div>
			<!-- Right part -->
			<div class="col-md-9 register-right">
				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success}
							Click <a href="login"> Sign In</a> to use our portal...
						</p>
					</div>
				</c:if>
				<div class="tab-content" id="myTabContent">
					<h3 class="register-heading">Register Here!</h3>



					<form:form action="save" method="post" modelAttribute="user">
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
									<label for="InputName">Full Name</label>
									<form:input type="text" path="name" class="form-control"
										id="InputName" placeholder="Enter full name" required="true" />
								</div>
								<div class="form-group">
									<label for="InputEmail">Email address</label>
									<form:input type="email" path="email" class="form-control"
										id="InputEmail" aria-describedby="emailHelp"
										placeholder="Enter email" required="true" />
								</div>
								<div class="form-group">
									<label for="InputPassword">Password</label>
									<form:input type="password" path="password"
										class="form-control" id="InputPassword"
										placeholder="Enter password" required="true" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="InputName">User Name</label>
									<form:input type="text" path="userName" class="form-control"
										id="InputName" placeholder="Enter user name" required="true" />
								</div>
								<div class="form-group">
									<label for="InputPhone">Phone</label>
									<form:input type="number" path="phone" maxlength="11"
										name="txtEmpPhone" class="form-control" id="InputPhone"
										placeholder="Your Phone" value="" required="true" />
								</div>
								<div class="form-group">
									<label for="InputPassword">Confirm Password</label> <input
										type="password" class="form-control" id="InputPassword"
										placeholder="Enter confirm password" required="true">
								</div>

								<input type="submit" class="btn btnRegister" value="Register" />
							</div>
						</div>
					</form:form>

				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>