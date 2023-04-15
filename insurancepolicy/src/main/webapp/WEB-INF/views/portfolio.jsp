<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

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

#collapsibleNavbar {
	margin-left: 300px;
}

table {
	text-align: center;
}
#btn{
	text-decoration: none;
	background-color:#b00;
	border: 1px solid #b00;
	color: white;
	padding: 5px 20px;
	border-radius: 4px;
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
					<li class="nav-item"><a class="nav-link" href="buypolicy">Buy
							Policy</a></li>
					<li class="nav-item"><a class="nav-link" href="portfolio">View
							Portfolio</a></li>
					<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container mt-5 mb-5"
		style="border: 1px solid black; border-radius: 10px; background-color: lightgray;">
		<center>
			<h2>Policy Details</h2>
		</center>
		<table class="table table-bordered cursive">
			<thead>
				<tr>
					<th>Policy ID</th>
					<th>Policy Name</th>
					<th>Policy id</th>
					<th>Policy tenure</th>
					<th>Policy Amount</th>
					<th>sumInsure</th>
					<th>Click Below Link for Delete Policy</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="policy">
					<tr>
						<td>${policy.id}</td>
						<td>${policy.name}</td>
						<td>${policy.id}</td>
						<td>${policy.tenure}</td>
						<td>${policy.amount}</td>
						<td>${policy.suminsure}</td>
						<td><a href="deletepolicy${policy.id}" id="btn">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>