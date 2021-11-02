<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>

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

	<!-- Form & Information -->
	<div class="container bg- mt-5 mb-4">
		<div class="row">
			<div class="col-sm-7">
				<form class="form">
					<h3 class="text-center mb-4" style="color: #393C0A;">CONTACT</h3>
					<div class="form-group">
						<input type="text" class="form-control contact"
							placeholder="Full Name" required>
					</div>
					<div class="form-group">
						<input type="email" class="form-control contact"
							aria-describedby="emailHelp" placeholder="Email" required>
					</div>
					<div class="form-group">
						<textarea class="form-control contact" rows="5"
							placeholder="Type your Message..."></textarea>
					</div>
					<div class="form-group text-right mx-3" id="contact">
						<a class="btn px-4" style="background: #0F4A7E; color: white;"
							href="" role="button">Send</a>
					</div>
				</form>
			</div>
			<div class="col-sm-5">
				<div class="text-center my-3">
					<img class="img-fluid"
						src="https://webstockreview.net/images/email-clipart-mail-logo-11.png"
						width="20%" height="20%">
				</div>

				<h4 class="text-center">
					<i>Contact Us!</i>
				</h4>
				<h5 class="text-center">We'll get back to you within 24 hours</h5>
				<hr>
				<table class="table table-borderless text-center">
					<tr>
						<th>Email:</th>
						<td>inquerycardeals@abc.com</td>
					</tr>
					<tr>
						<th>Phone:</th>
						<td>+95 9332133</td>
					</tr>
					<tr>
						<th>Address:</th>
						<td>Yangon, Myanmar</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>