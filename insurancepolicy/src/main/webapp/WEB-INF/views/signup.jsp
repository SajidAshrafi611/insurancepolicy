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
					<li class="nav-item"><a class="nav-link" href="login">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="signup">Signup</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container mt-5 mb-5"
		style="background-color: #fff; width: 40%; border-radius: 10px; border:1px solid black; background-color:lightgray;">
		<h2 style="text-align: center; margin-top: 27px;">SignUp Form</h2>
		<hr>
		<form action="saveuser" method="post">
			<div class="mb-3 mt-3 ">
				<label for="loginid"> Login ID:</label> <input type="text"
					name="loginid" class="form-control" id="loginid"
					placeholder="Enter Login ID" required>
			</div>

			<div class="mb-3">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd" placeholder="Enter password"
					name="password" required>
			</div>

			<div class="mb-3">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" placeholder="Enter Name" name="name"
					required>
			</div>

			<div class="mb-3">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" placeholder="Enter email"
					name="email" required>
			</div>

			<div class="mb-3">
				<label for="mobileno">Mobile Number:</label> <input type="text"
					class="form-control" id="mobileno"
					placeholder="Enter Mobile Number" name="mobileno" required>
			</div>

			<div class="mb-5">
				<label for="address">Address:</label> <input type="text"
					class="form-control" id="address" placeholder="Enter Address"
					name="address" required>
			</div>
			<center>
				<button type="submit" class="btn btn-primary mb-3 mx-2">Sign
					Up</button>
				<button type="reset" class="btn btn-danger mb-3 mx-2">Reset</button>
			</center>
		</form>
	</div>
</body>
</html>
