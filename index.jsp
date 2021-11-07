<%@ page errorPage="error-page.jsp" %>

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

<!--  font awesome 4 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Technical Blog</title>
</head>
<body>

	<!--  navbar -->
	<%@include file="navbar.jsp"%>

	<!--  checking the database cnnection -->
	<%-- <%= ConnectionProvider.getConnection() %> --%>

	<!--  bannar -->
	<div class=" container-fluid  p-0 m-0 ">
		<div class="jumbotron primary-background p-5 clip-path ">
			<div class="container">
				<h3 class="display-3 banner-title mb-3">Welcome to ! Technical
					Blog</h3>
				<p>Most programming languages consist of instructions for
					computers. Programming languages are one kind of computer language,
					and are used in computer programming to implement algorithms.</p>
				<p>Here you are create the blog or post and read the post of
					other programming language.</p>
				<a href="#!" class="btn btn-outline-primary me-2">Lets' free
					starts here</a> <a href="login-page.jsp"
					class="btn btn-outline-primary "><span
					class="fa fa-refresh fa-spin p-1 "></span>Login here</a>
			</div>
		</div>
	</div>

	<!-- post are here -->
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title">Java Programming</h3>
						<p class="card-text">Java is a high-level, class-based,
							object-oriented programming language that is designed to have as
							few implementation dependencies as possible.</p>
						<p class="card-text">Java was originally developed by James
							Gosling at Sun Microsystems (which has since been acquired by
							Oracle) and released in 1995 as a core component of Sun
							Microsystems' Java platform.</p>
						<a href="#!" class="btn primary-background">Read more...</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title">Java Programming</h3>
						<p class="card-text">Java is a high-level, class-based,
							object-oriented programming language that is designed to have as
							few implementation dependencies as possible.</p>
						<p class="card-text">Java was originally developed by James
							Gosling at Sun Microsystems (which has since been acquired by
							Oracle) and released in 1995 as a core component of Sun
							Microsystems' Java platform.</p>
						<a href="#!" class="btn primary-background">Read more...</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title">Java Programming</h3>
						<p class="card-text">Java is a high-level, class-based,
							object-oriented programming language that is designed to have as
							few implementation dependencies as possible.</p>
						<p class="card-text">Java was originally developed by James
							Gosling at Sun Microsystems (which has since been acquired by
							Oracle) and released in 1995 as a core component of Sun
							Microsystems' Java platform.</p>
						<a href="#!" class="btn primary-background">Read more...</a>
					</div>
				</div>
			</div>

			<div class="row mt-4">
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<h3 class="card-title">Java Programming</h3>
							<p class="card-text">Java is a high-level, class-based,
								object-oriented programming language that is designed to have as
								few implementation dependencies as possible.</p>
							<p class="card-text">Java was originally developed by James
								Gosling at Sun Microsystems (which has since been acquired by
								Oracle) and released in 1995 as a core component of Sun
								Microsystems' Java platform.</p>
							<a href="#!" class="btn primary-background">Read more...</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<h3 class="card-title">Java Programming</h3>
							<p class="card-text">Java is a high-level, class-based,
								object-oriented programming language that is designed to have as
								few implementation dependencies as possible.</p>
							<p class="card-text">Java was originally developed by James
								Gosling at Sun Microsystems (which has since been acquired by
								Oracle) and released in 1995 as a core component of Sun
								Microsystems' Java platform.</p>
							<a href="#!" class="btn primary-background">Read more...</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<h3 class="card-title">Java Programming</h3>
							<p class="card-text">Java is a high-level, class-based,
								object-oriented programming language that is designed to have as
								few implementation dependencies as possible.</p>
							<p class="card-text">Java was originally developed by James
								Gosling at Sun Microsystems (which has since been acquired by
								Oracle) and released in 1995 as a core component of Sun
								Microsystems' Java platform.</p>
							<a href="#!" class="btn primary-background">Read more...</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->

	<!-- jquery cdn -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<!-- custom javascript -->
	<script src="js/script.js"></script>
</body>
</html>
