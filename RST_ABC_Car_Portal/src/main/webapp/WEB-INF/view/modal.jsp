<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<title>New car</title>
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

	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h2 class="text-center my-5" style="color: #003F5A;">Post A Car
					For Sale!</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<c:url var="post_url" value="cars" />
				<form class="form" action="${post_url}" id="myform" method="post">

					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

					<div class="form-group">
						<label for="make">Make:</label> <input type="text" name="make"
							id="make" value="" class="form-control" required="true"></input>
					</div>

					<div class="form-group">
						<label for="model">Model:</label> <input type="text" name="model"
							id="model" value="" class="form-control" required></input>
					</div>

					<div class="form-grou">
						<label for="registration"> Registration:</label> <input
							type="text" name="registration" id="registration" value=""
							class="form-control" required></input>
					</div>

					<div class="form-group">
						<label for="price">Price:</label> <input type="text" name="price"
							id="price" value="" class="form-control" required></input>
					</div>


					<div class="form-group text-right">
						<input type="button" id="add-btn" class="btn btn-info mx-3"
							value="Cancel" onclick="cancel()"> <input type="submit"
							id="add-btn " name="" value="Post" class="btn btn-success mx-3">
					</div>
				</form>

			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>



	<%@ include file="footer.jsp"%>

</body>
<script>
						function cancel() {
							window.location.href = "cars"
						}
					</script>
</html>
