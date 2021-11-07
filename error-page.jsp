<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="true"%>

<!doctype html>

<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!--  custom css -->
<link href="css/style.css" rel="stylesheet">
<title>Something went wrong</title>
</head>
<body>
	<div class="container text-center">
		<img alt="error image missingf" src="images/error.png"
			class="img-fluid">
			<h4 class="display-3">Sorry ! Something went wrong</h4>
			<p><%=exception%></p>
			<a href="index.jsp" class="btn btn-outline-danger">Home</a>
		
	</div>
</body>
</html>