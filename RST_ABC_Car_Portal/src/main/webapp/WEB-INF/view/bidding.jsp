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
<title>Car Bidding</title>
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

	<!-- Bidding Information -->
	<div class="container-fluid py-5">
		<div class="row">
			<div class="col-sm-12">
				<h2 class="text text-center" style="color: #003F5A;">
					Welcome to <i>${car.model}</i> Car Bidding
				</h2>
			</div>
		</div>

		<div class="row py-5">
			<div class="col-sm-4"></div>
			<div class="col-sm-4 ml-5">
				<c:url var="post_url" value="car_bidding" />
				<form class="form-inline ml-3" action="${post_url}" method="post">
					<input type="hidden" name="id" value="${car.id}" /> <input
						type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<input class="form-control mx-3" id="bidding-search" type="text"
						name="bitprice" placeholder="Add Price..."> <input
						type="submit" id="button" class="btn px-2"
						style="background: #CDB599;" name="bid" value="Offer">

				</form>
				<div class="text-center mt-5">
					<a class="btn btn-success px-3" href="car_detail?id=${car.id}"
						role="button"> Go Back </a>
				</div>
			</div>
			<div class="col-sm-4"></div>
		</div>

		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<h3 class="text-center pt-3" id="text">Current Bidding Price!</h3>
				<table class="table table-striped text-center">
					<thead>
						<tr>
							<th>No.</th>
							<th>Username</th>
							<th>Price</th>
							<th>Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<% int i=1; %>
						<c:forEach var="car_bidding" items="${bidinfo}">
							<tr>
								<td class="pt-3"><%=i %></td>
								<td class="pt-3">${car_bidding.bidderName}</td>
								<td class="pt-3">${car_bidding.bidderPrice}</td>
								<td class="pt-3">${car_bidding.bid_date_time}</td>
								<td><a class="btn btn-info px-3" href="" role="button">View</a>
								</td>
							</tr>
							<% i++; %>
						</c:forEach>
					</tbody>
				</table>

			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

</body>

</html>