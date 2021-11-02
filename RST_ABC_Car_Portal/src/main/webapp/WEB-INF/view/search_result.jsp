<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Car Result</title>
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

	<!-- Search Result -->
	<div class="container-fluid bg-1">
		<div>
			<h2 class="text-center my-5" style="color: #003F5A;">Search Car
				Results</h2>

			<!--  Search Car Lists  -->

			<div class="row">

				<div class="col-md-12">

					<c:if test="${empty search_cars}">
						<div>
							<h4 class="text-danger text-center">No Matching Item Found.
							</h4>
							<h5 class="text-danger text-center">Please try with another
								keyword.</h5>
						</div>
					</c:if>

					<c:if test="${not empty search_cars}">

						<table class="table table-striped ">

							<thead class="text-center">
								<tr>
									<th>No.</th>
									<th>Car ID</th>
									<th>Make</th>
									<th>Model</th>
									<th>Registration.</th>
									<th>Price</th>
									<th>Actions</th>
								</tr>
							</thead>

							<tbody class="text-center">

								<% int i=1; %>
								<c:forEach var="car" items="${search_cars}">

									<tr>
										<td><%=i %></td>
										<td>${car.id}</td>
										<td>${car.make}</td>
										<td>${car.model}</td>
										<td>${car.registration}</td>
										<td>${car.price}</td>

										<td><a href="car_detail?id=${car.id}">
												<button class="btn btn-info">View</button>
										</a></td>
									</tr>
									<% i++; %>
								</c:forEach>

							</tbody>
						</table>

					</c:if>

				</div>
			</div>


		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>