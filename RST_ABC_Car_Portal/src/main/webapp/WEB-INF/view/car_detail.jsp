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
<title>Car Detail page</title>
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


	<!-- Detail Information -->
	<div class="container">
		<div class="row my-5">
			<div class="col-sm-12">
				<h2 class="text-center" style="color: #003F5A;">${car.model}
					Details</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6 text-center detail">
				<div class="row pb-3">
					<div class="col-sm-6">
						<h5>
							<b>ID : </b>
						</h5>
					</div>
					<div class="col-sm-6">
						<h5>${car.id}</h5>
					</div>
				</div>
				<div class="row pb-3">
					<div class="col-sm-6">
						<h5>
							<b>Make : </b>
						</h5>
					</div>
					<div class="col-sm-6">
						<h5>${car.make}</h5>
					</div>
				</div>
				<div class="row pb-3">
					<div class="col-sm-6">
						<h5>
							<b>Model : </b>
						</h5>
					</div>
					<div class="col-sm-6">
						<h5>${car.model}</h5>
					</div>
				</div>
				<div class="row pb-3">
					<div class="col-sm-6">
						<h5>
							<b>Registration : </b>
						</h5>
					</div>
					<div class="col-sm-6">
						<h5>${car.registration}</h5>
					</div>
				</div>
				<div class="row pb-3">
					<div class="col-sm-6">
						<h5>
							<b>Price : </b>
						</h5>
					</div>
					<div class="col-sm-6">
						<h5>${car.price}</h5>
					</div>
				</div>
				<div class="row pb-3 text-center">
					<div class="col-sm-12">
						<a href="car_bidding?id=${car.id}"> <input type="submit"
							id="detail-btn" value="Bit Car" class="btn btn-success mx-3">
						</a> <input type="button" id="detail-btn" class="btn btn-primary mx-3"
							value="Go Back" onclick="goBack()" />
					</div>



				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
<script>
		function goBack() {
			window.history.back();
		}
	</script>
</html>