<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Used Car</title>
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

<style type="text/css">
body {
	background-image: url('/RST_ABC_Car_Portal/image/holidays.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

#logo1 {
	font-family: 'Libre Baskerville', serif;
}

#logo2 {
	font-family: 'Crimson Text', serif;
	letter-spacing: 3px;
}

h5 {
	font-family: 'Cardo', serif;
	letter-spacing: 1px;
}

a {
	color: black;
	text-decoration: none;
}

a:hover {
	color: white;
	text-decoration: none;
}

.btn {
	font-family: 'Cardo', serif;
	border: 1px solid #fff;
	border-radius: 0;
	letter-spacing: 1px;
	outline: none;
}

.buttons {
	padding-top: 110px;
	padding-left: 30px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<sec:authorize access="!isAuthenticated()">
		<!-- Banner -->
		<div class="container-fluid banner" style="height: 479px;">
			<div class="row">
				<div class="col-sm-12 mt-5 buttons">
					<a class="btn btn-info mt-5 mx-5 px-4 py-2" href="new"
						role="button">Register</a> <a
						class="btn btn-info mt-5 mx-5 px-4 py-2" href="login"
						role="button">Login</a>
				</div>
			</div>
		</div>
	</sec:authorize>

	<%@ include file="footer.jsp"%>
</body>
</html>