<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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
	<div class="container-fluid my-3 ">
		<div class="row my-3">
			<div class="col-sm-12 my-5">

				<div class="login-reg-panel">
					<div class="register-info-box text-center">
						<h2 class="text">Don't have an account?</h2>
						<h5 class="text">Create here!</h5>
						<a class="btn mt-4" id="label-login" href="new" role="button">Register</a>
					</div>


					<c:url var="post_url" value="/login" />

					<form class="form white-panel" action="${post_url}" method="post">

						<div class="login-show">
							<c:if test="${error_string != null}">

								<div class="alert alert-danger text-center">
									${error_string}</div>

							</c:if>
							<h3 class="text text-center">LOGIN</h3>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="text" name="username"
								placeholder="Username" required> <input type="password"
								name="password" placeholder="Password" required> <input
								type="submit" name="Login" value="Login" class="btn button">
							<a href="#">Forgot password?</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

</body>

<script type="text/javascript">	
	    $(document).ready(function(){
	    	$('.login-show').addClass('show-log-panel');
		});
	</script>
</html>