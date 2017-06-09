<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.ExamDAO"%>
<%@ page import="model.Examination"%>
<%@ page import="java.util.*"%>
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
	<title>Update Examination</title>
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

	<div class="container">
		<div class="row">
			<div class="col-xs-12 contain">
				In order to update specific note for an examination choose the patient's ID and submit the new note.
			</div>
		</div>
	
		<div class="row">
			<!-- SEARCH BOX -->
			<div class="col-md-4 col-sm-8">
 				<div class="contain">
					<form class="navbar-form" action="SearchExaminationByPatientId">
						<div class="input-group">
      						<input type="text" class="form-control" name="patient_id" placeholder="Patient ID">
      							<span class="input-group-btn">
        							<button class="btn btn-default" type="submit">Go!</button>
      							</span>
    					</div><!-- /input-group -->
					</form>
				</div>
			</div><!-- SEARCH BOX -->
			<%if (session.getAttribute("exam")!=null){ %>
		<% Examination exam = (Examination)session.getAttribute("exam"); %> 
			<div class="col-md-4 col-sm-8">
				<div class="contain">
					<p class="text-justify"> <% out.print(exam.getNotes()) ; %> </p>
				</div>
			</div>
			
			<div class="col-md-4 col-sm-8">
				<textarea class="form-control" name="update" rows="5" placeholder="New Notes"></textarea>
				<button type="submit" class="btn btn-primary">&#10004 Send</button>
					<button type="reset" class="btn btn-default">&#10008 Clear</button>
			</div>
		</div>
	</div>
	<%}else{ %>
	<div class="col-md-4 col-sm-8">
				<div class="contain">
					<p class="text-justify">  </p>
				</div>
			</div>
			
			<div class="col-md-4 col-sm-8">
				<textarea class="form-control" name="update" rows="5" placeholder="New Notes"></textarea>
				<button type="submit" class="btn btn-primary">&#10004 Send</button>
					<button type="reset" class="btn btn-default">&#10008 Clear</button>
			</div>
		</div>
	</div>
	
	<%} %>

	<!-- /.container -->
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