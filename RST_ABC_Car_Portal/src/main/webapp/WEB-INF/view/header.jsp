<!-- Header -->
<div class="container-fluid"
	style="background-image: linear-gradient(to right, #D6D3C6, #017B6C);">
	<div class="row">
		<div class="col-sm-4">

			<sec:authorize access="!isAuthenticated()">
				<a href="home">
					<h5 class="text text-left ml-5" style="margin-top: 40px;">Home</h5>
				</a>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<a href="cars">
					<h5 class="text text-left ml-5" style="margin-top: 40px;">Home</h5>
				</a>
			</sec:authorize>

		</div>
		<div class="col-sm-4">
			<h2 class="text text-center mt-3" id="logo1">ABC</h2>
			<h3 class="text text-center mb-3" id="logo2">CAR DEALS</h3>
		</div>

		<div class="col-sm-4">
			<a href="contact">
				<h5 class="text text-right mr-5" style="margin-top: 40px;">Contact
					Us</h5>
			</a>
		</div>
	</div>

	<sec:authorize access="isAuthenticated()">
		<div class="row navigation">
			<div class="col-sm-12">
				<nav class="navbar navbar-expand-lg ">

					<sec:authorize access="hasRole('Users')">
						<a class="navbar-brand" href="cars"><h5>Car List</h5></a>
					</sec:authorize>

					<sec:authorize access="hasRole('Administrator')">
						<a class="navbar-brand  mx-5" href="users"><h5>User List</h5></a>
					</sec:authorize>

					<button class="navbar-toggler bg-success" type="button"
						data-toggle="collapse" data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div class="col-sm-1 "></div>
						<div class="col-sm-7 ">
							<c:url var="get_search_url" value="search" />
							<form action="${get_search_url}" method="get"
								class="form-inline my-2 my-lg-0">
								<input class="form-control mr-sm-2" type="search"
									placeholder="Type Here" aria-label="Search" name="keyword">
								<button class="btn my-2 my-sm-0" type="submit">Search</button>
							</form>
						</div>
						<div class="col-sm-4">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item active ml-4 px-2"><a class="nav-link"
									href="new_car">
										<h5>Sell Car</h5>
								</a></li>



								<li class="nav-item active mx-5 px-1 mt-2">
									<form action="logout" method="post">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" /> <input type="submit" name="Logout"
											value="Logout" class="btn-logout"></input>
									</form>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>



	</sec:authorize>
</div>

