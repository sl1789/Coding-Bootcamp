<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.DoctorDAO"%>
<%@ page import="model.User"%>
<%@ page import="model.Doctor"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<title>Submit Examination</title>
</head>

<body>

	<!-- NAVBAR-->
	<jsp:include page="NavBar.jsp"></jsp:include>
	<!-- NAVBAR-->

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- IMAGE -->
	<div class="row">
		<div class="col-md-12 padding-0">
			<img class="img-responsive img-center" src="images/p.jpeg" alt=""
				width="full" height="150" />
		</div>
	</div>
	<!-- IMAGE -->

	<br>
	<br>

	<% if(request.getAttribute("message") != null) { %>
	<div class="contain">
		<div class="alert alert-success" role="alert">
			<p class="text-center"><%=(String)request.getAttribute("message") %></p>
		</div>
	</div>         
	<% }%>


	<!-- CONTAINER BOX -->
	<div class="container">

		

		<div class="row">
			<!-- SEARCH BOX -->
			<div class="col-md-5 col-sm-8">
 				<div class="contain">
					<form class="navbar-form" role="search" action="SearchPatientKeywordController">
						<div class="input-group">
      						<input type="text" class="form-control" name="patient" placeholder="Search for...">
      							<span class="input-group-btn">
        							<button class="btn btn-default" type="submit">Go!</button>
      							</span>
    					</div><!-- /input-group -->
					</form>
				</div>
			</div><!-- SEARCH BOX -->
		
			<div class="col-md-7 col-sm-8">
				<div class="contain">
					<p class="text-justify">Search patients by name, surname or patient ID</p>
					<br>
				</div>
			</div>
		</div>
		
		<div class="row">
			<!-- SEARCH BOX -->
			<div class="col-md-5 col-sm-8">
 				<div class="contain">
					<form class="navbar-form" name="transplant" action="SearchPatientKeywordController">
						<div class="input-group">
      						<input type="text" class="form-control" placeholder="Search for...">
      							<span class="input-group-btn">
        							<button class="btn btn-default" type="button">Go!</button>
      							</span>
    					</div><!-- /input-group -->
					</form>
				</div>
			</div><!-- SEARCH BOX -->
		
			<div class="col-md-7 col-sm-8">
				<div class="contain">
					<p class="text-justify">Search transplants according to 7 allele combination</p>
					<br>
				</div>
			</div>
		</div>



			
	</div><!-- CONTAINER BOX -->


	<!-- SCRIPTS -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/new.js"></script>
	<!-- SCRIPTS -->
</body>

<!-- FOOTER -->
<footer class="panel-footer text-center">
<p>&copy Copyright: BioDevelopers</p>
</footer>
<!-- FOOTER -->

</html>