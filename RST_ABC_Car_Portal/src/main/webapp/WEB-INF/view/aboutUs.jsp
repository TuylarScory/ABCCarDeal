<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>

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

	<!-- Information -->
	<div class="container aboutus mt-5">
		<div class="jumbotron" style="background: #B8BDC1">
			<h3 style="color: #A83A40;">We Help You Great A Greate Deal On A
				Car!</h3>



			<p class="lead">CarsDeals helps you get a great deal on a used
				car by giving you up-to-the-minute car pricing information so that
				you're fully armed with the knowledge you need as you shop for a
				car.</p>

			<hr class="my-4">
			<p>We also help buyers with less-than-perfect credit find special
				financing options through our network of trusted lending partners.</p>
			<p class="lead">
				<a class="btn px-3" style="background: #D09375;" href="new"
					role="button">Join Us Now!</a>
			</p>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>