<%@ page errorPage="error-page.jsp"%>
<%@page import="technical.blog.com.entities.User"%>
<%
User u = (User) session.getAttribute("currentUser");
//out.print(u);
if (u == null) {
	response.sendRedirect("login-page.jsp");
}
%>


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
<title>Technical Blog-Profile Page</title>
</head>
<body>

	<!--  navbar start-->
	<nav class="navbar navbar-expand-lg navbar-light primary-background ">
		<div class="container-fluid">
			<a class="navbar-brand ms-5" href="index.jsp"><span
				class="fa fa-heart-o fa-2x"></span></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse ms-5"
				id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp"><span
							class="fa fa-home p-1 "></span>Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="fa fa-address-book p-1"></span>Contact</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false"><span
							class="fa fa-check-circle-o"></span> Category </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Java Programming</a></li>
							<li><a class="dropdown-item" href="#">Python Programming</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">PHP</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#"
						data-bs-toggle="modal" data-bs-target="#create-post"><span
							class="fa fa-plus-circle p-1"></span>Create Post</a></li>

				</ul>
				<ul class="navbar-nav mr-right">
					<li class="nav-item"><a class="nav-link" href="#"
						data-bs-toggle="modal" data-bs-target="#profile-modal"><span
							class="fa fa-user-circle p-1"></span><%=u.getName()%></a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutServlet"><span
							class="fa fa-user p-1"></span>Logout</a></li>

				</ul>


			</div>
		</div>
	</nav>
	<!--  navabr end  -->


	<!-- display profile modal start -->

	<div class="modal fade" id="profile-modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header primary-background">
					<h5 class="modal-title " id="modal-title">Technical Blog</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<!--  show user profile details start -->



					<div class="container text-center">
						<img alt="profile image missing.." src="images/<%= u.getProfile() %>"
							class="img-fluid " style="border-radius: 50%; max-width: 150px;">
						<h3 class="mt-2"><%=u.getName()%></h3>
					</div>
					<div id="show-profile">
						<table class="table table-hover " id="show-profile">
							<tbody>
								<tr>
									<th scope="row">User ID</th>
									<td><%=u.getId()%></td>
								</tr>
								<tr>

									<th scope="row">Username</th>
									<td><%=u.getName()%></td>

								</tr>

								<tr>

									<th scope="row">Email ID</th>
									<td><%=u.getEmail()%></td>

								</tr>

								<tr>

									<th scope="row">Password</th>
									<td><%=u.getPassword()%></td>

								</tr>

								<tr>

									<th scope="row">City</th>
									<td><%=u.getCity()%></td>

								</tr>
								<tr>

									<th scope="row">Gender</th>
									<td><%=u.getGender()%></td>

								</tr>

								<tr>

									<th scope="row">About us</th>
									<td><%=u.getAbout()%></textarea></td>

								</tr>

								<tr>

									<th scope="row">Register Date</th>
									<td><%=u.getRdate().toGMTString()%></td>

								</tr>


							</tbody>

						</table>

					</div>

					<!--  show user profile details end -->

					<!--  Edit user profile details start -->

					<div class="container" id="edit-profile" style="display: none;">
						<div class="alert primary-background text-center" role="alert"
							id="edit-profile-title">Edit user profile</div>
						<form  id="edit-profile-details" action="EditServlet" method="post"
							enctype="multipart/form-data">
							<table class="table table-hover ">
								<tbody>
									<tr>
										<th scope="row">User ID</th>
										<td><%=u.getId()%></td>
									</tr>
									<tr>

										<th scope="row">Username</th>
										<td><input type="text" name="edit-user-name"
											id="edit-user-name" class="form-control"
											value="<%=u.getName()%>"></td>

									</tr>

									<tr>

										<th scope="row">Email ID</th>
										<td><input type="email" name="edit-user-email"
											id="edit-user-email" class="form-control"
											value="<%=u.getEmail()%>"></td>

									</tr>

									<tr>

										<th scope="row">Password</th>
										<td><input type="password" name="edit-user-password"
											id="edit-user-password" class="form-control"
											value="<%=u.getPassword()%>"></td>

									</tr>

									<tr>

										<th scope="row">City</th>
										<td><input type="text" name="edit-user-city"
											id="edit-user-city" class="form-control"
											value="<%=u.getCity()%>"></td>

									</tr>
									<tr>

										<th scope="row">Gender</th>
										<td><input type="text" name="edit-user-gender"
											id="edit-user-gender" class="form-control"
											value="<%=u.getGender()%>"></td>

									</tr>

									<tr>

										<th scope="row">About us</th>
										<td><textarea rows="3" class="form-control"
												name="edit-user-about"> <%=u.getAbout()%></textarea></td>

									</tr>

									<tr>
										<th scope="row">New profile picture</th>
										<td><input type="file" class="form-control"
											name="edit-user-profile"></td>
									</tr>



								</tbody>
							</table>
							<div class="container text-center">
								<button type="submit" class="btn btn-outline-success pe-5 ps-5">Submit</button>
							</div>

						</form>


					</div>

					<!--  Edit user profile details end -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary"
						id="edit-user-profile-btn">Edit</button>
				</div>
			</div>
		</div>
	</div>


	<!-- display profile modal end -->




	<!-- create post modal start -->

	<div class="modal fade" id="create-post" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header primary-background">
					<h5 class="modal-title " id="modal-title">Create Post</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<table class="table table-hover ">
							<tbody>
								<tr>
									<th scope="row">Select Category</th>
									<td><select class="form-control">
											<option selected disabled="disabled">Select category</option>
											<option>Java Programming</option>
											<option>Python Programming</option>
											<option>C Programming</option>
											<option>C++ Programming</option>
									</select></td>
								</tr>
								<tr>

									<th scope="row">Post Title</th>
									<td><input type="text" name="post-title" id="post-title"
										class="form-control" placeholder="Enter your name "></td>

								</tr>

								<tr>

									<th scope="row">Post Content</th>
									<td><textarea rows="5" class="form-control"
											name="post-content" placeholder="Enter content of your post"></textarea></td>

								</tr>

								<tr>

									<th scope="row">Post Code</th>
									<td><textarea rows="4" class="form-control"
											name="post-code" placeholder="Enter code of your post"></textarea></td>

								</tr>

								<tr>

									<th scope="row">Post Link</th>
									<td><input type="text" name="post-link"
										class="form-control" placeholder="Enter link of your post "></td>

								</tr>

								<tr>
									<th scope="row">Post Image</th>
									<td><input type="file" class="form-control p-1"
										name="post-image"></td>
								</tr>



							</tbody>
						</table>
						<div class="container text-center">
							<button type="submit" class="btn btn-outline-success pe-5 ps-5">Submit</button>
						</div>

					</form>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

	<!-- create post modal end -->



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

	<script type="text/javascript">
		$(document).ready(function() {
			// toggle 
			let editStatus = false;
			$("#edit-user-profile-btn").click(function() {

				if (editStatus == false) {
					$("#show-profile").hide();
					$("#edit-profile").show();
					$("#edit-user-profile-btn").html("Back")
					editStatus = true;
				} else {
					$("#show-profile").show();
					$("#edit-profile").hide();
					$(this).html("Edit")
					editStatus = false;
				}

			})
		})
	</script>
</body>
</html>
</body>
</html>