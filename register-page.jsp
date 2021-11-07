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
<title>Technical Blog-Register Page</title>
</head>
<body>

	<!--  navbar -->
	<%@include file="navbar.jsp"%>

	<!--  Login here -->
	<main class="primary-background clip-path" style="height: 90vh;">
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card ">
						<div class="card-header text-center primary-background ">
							<span class="fa fa-user-o fa-3x mt-2"></span>
							<h2>Sign up</h2>
						</div>
						<div class="card-body">

							<form id="register-form" action="RegisterServlet" method="post">
								<table class="table table-hover ">
									<tbody>
										<tr>

											<th scope="row">Username</th>
											<td><input type="text" name="user-name" id="user-name"
												class="form-control" placeholder="Enter your name "></td>

										</tr>

										<tr>

											<th scope="row">Email ID</th>
											<td><input type="email" name="user-email"
												id="user-email" class="form-control"
												placeholder="Enter your email ID "></td>

										</tr>

										<tr>

											<th scope="row">Password</th>
											<td><input type="password" name="user-password"
												id="user-password" class="form-control"
												placeholder="Enter your password "></td>

										</tr>

										<tr>

											<th scope="row">City</th>
											<td><input type="text" name="user-city" id="user-city"
												class="form-control" placeholder="Enter your city name "></td>

										</tr>
										<tr>

											<th scope="row">Select Gender</th>
											<td><input type="radio" name="user-gender" value="Male"
												class="form-check-input me-1">Male <input
												type="radio" name="user-gender" value="Female"
												class="form-check-input ms-2 me-1">Female</td>

										</tr>
										<tr>

											<th scope="row">About us</th>
											<td><textarea rows="3" class="form-control"
													name="user-about"
													placeholder="Something write about yourself"></textarea></td>

										</tr>

										<tr>
											<td scope="row" colspan="2"><input type="checkbox"
												name="user-check" class="form-check-input"
												id="exampleCheck1"> <label class="form-check-label"
												for="exampleCheck1">Please check the terms and
													condition..</label></td>
										</tr>

									</tbody>
								</table>
								<div class="container text-center">
									<button type="submit" class="btn btn-outline-success pe-5 ps-5">Submit</button>
								</div>

							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

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
	<!-- custom javascript -->
	<script src="js/script.js"></script>
	
	<!-- jquery cdn -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
		
	<!-- sweet alert cdn -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<script>
	
	$(document).ready(function(){
		//console.log("loaded");
		$('#register-form').on('submit',function(event){
			
			event.preventDefault();
			
			let form=new FormData(this);
			
			//send to RegisterServlet
			$.ajax({
				url:"RegisterServlet",
				type:"POST",
				data:form,
				success:function(data,textStatus,jqXHR)
				{
					//console.log(data)
					if(data.trim()=="Saved Records")
					{
						swal("Registered Successfully !! we are going to redirect to login page thank you !!")
						.then((value) => {
						  window.location='login-page.jsp';
						});
					}
					
					else{
						swal(data);
					}
					
				},
				error:function(jqXHR,textStatus,errorThrown)
				{
					//console.log(jqXHR)
					swal("Something went wrong.. please try again")
				},
				processData:false,
				contentType:false
			});
		});
	});
	
	
	</script>
</body>
</html>
</body>
</html>