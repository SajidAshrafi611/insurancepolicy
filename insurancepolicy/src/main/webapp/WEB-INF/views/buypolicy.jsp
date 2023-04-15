<html>
<head>
<title>Insurance_Policy</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<%--  <c:url value="/css/style.css" var="jstlCss" />
		<link href="${jstlCss}" rel="stylesheet" > --%>

<style>
* {
	margin: 0px;
	padding: 0px;
}

.nav a {
	color: white;
	text-decoration: none;
	margin: 0px 10px;
}

.nav a:hover {
	color: white;
	text-decoration: underline;
}

#collapsibleNavbar{
	margin-left: 400px;
} 
</style>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/"><img alt="" src="images/logo2.jpg"
				style="width: 15%; margin-left: 50px;"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav float-end">
					<li class="nav-item">
						<a class="nav-link" href="buypolicy">Buy Policy</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="portfolio">View Portfolio</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="logout">Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container mt-5 mb-5"
		style="background-color: #fff; width: 40%; border-radius: 10px; border:1px solid black; background-color:lightgray;">
		<h2 style="text-align: center; margin-top: 27px;">Buy Policy Form</h2>
		<hr>
		<form action="savepolicy" method="post">
			<select class="form-select" name="name" aria-label="Default select example">
			    <option selected>Select Policy</option>
				<option value="Health">Health</option>
				<option value="Vehicle">Vehicle</option>
				<option value="Home">Home</option>
			</select>
			<div class="mb-3 mt-3 ">
				<label for="tenure"> Insurance Tenure:</label> 
				<input type="text" name="tenure" class="form-control" id="tenure" placeholder="Enter Policy Tenure" required>
			</div>

			<div class="mb-3">
				<label for="amount">Premium Amount :</label> 
				<input type="text" name="amount" class="form-control" id="amount" placeholder="Enter Premium Amount" required>
			</div>

			<div class="mb-3">
				<label for="suminsure">Sum Insured :</label> 
				<input type="text" class="form-control" id="suminsure" name="suminsure" placeholder="Sum Insured"  required>
			</div>

			<center>
				<button type="submit" class="btn btn-primary mb-3 mx-2">Buy Policy</button>
				<button type="reset" class="btn btn-danger mb-3 mx-2">Reset</button>
			</center>
		</form>
	</div>
</body>
</html>
	
		