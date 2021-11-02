<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Car List</title>
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
	<!-- All Car Information -->
	<div class="container-fluid">
		<div class="row my-5">
			<div class="col-sm-12">
				<h2 class="text text-center" style="color: #003F5A;">"Car List"</h2>
			</div>
		</div>

		<c:if test="${not empty error_message}">
			<p>${error_message}</p>
		</c:if>

		<c:if test="${empty cars}">
			<sec:authorize access="hasRole('Administrator')">
				<span> No Cars are added yet. </span>
			</sec:authorize>
			<sec:authorize access="hasRole('Users')">
				<span>
					<h4 class=" text text-center">Please click on Sell Car button
						to add Cars to the system.</h4>
				</span>
			</sec:authorize>
		</c:if>



		<div class="row">
			<div class="col-sm-12">
				<c:if test="${not empty cars}">
					<table class="table table-hover table-striped">
						<thead class="text text-center">
							<tr>
								<th scope="col">No.</th>
								<th scope="col">ID</th>
								<th scope="col">Make</th>
								<th scope="col">Model</th>
								<th scope="col">Registration</th>
								<th scope="col">Price</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody class="text text-center">

							<% int i=1; %>
							<c:forEach var="car" items="${cars}">

								<tr>
									<td><%=i %></td>
									<td class="pt-3">${car.id}</td>
									<td class="pt-3">${car.make}</td>
									<td class="pt-3">${car.model}</td>
									<td class="pt-3">${car.registration}</td>
									<td class="pt-3">${car.price}</td>
									<td id=""><a class="btn btn-success px-3"
										href="car_detail?id=${car.id}" role="button"> View </a> <sec:authorize
											access="hasRole('Administrator')">
											<a href="edit?id=${car.id}" class="btn btn-info px-3">
												Update </a>
											<a href="delete?id=${car.id}" class="btn btn-danger px-3">
												Delete </a>
										</sec:authorize></td>
								</tr>
								<% i++; %>
							</c:forEach>

						</tbody>
					</table>

				</c:if>
			</div>
		</div>
	</div>



	<%@ include file="footer.jsp"%>
</body>
</html>