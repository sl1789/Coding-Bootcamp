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
			<div class="col-md-5 col-sm-12">
				<div class="contain">
					<a href="#" class="btn btn-default" data-toggle="modal" data-target="#inexam">Input Examination</a>
				</div>
			</div>         
				
			<div class="col-md-7 col-sm-12">
				<div class="contain">
					<p class="text-justify">You have the ability to import the exams you have done into database.</p>
				</div>
			</div>
		</div>

		
		<!-- SEARCH BOX -->
		<div class="row">
			<!-- SEARCH BOX -->
			<div class="col-md-5 col-sm-12">
 				<div class="contain">
					<form class="navbar-form" action="SearchExamByDocUsername">
						<div class="input-group">
      						<input type="text" class="form-control" name="exam" placeholder="Search for...">
      							<span class="input-group-btn">
        							<button class="btn btn-default" type="submit">Go!</button>
      							</span>
    					</div><!-- /input-group -->
					</form>
				</div>
			</div><!-- SEARCH BOX -->
		
			<div class="col-md-7 col-sm-12">
				<div class="contain">
					<p class="text-justify">Search examinations by your username</p>
					<br>
				</div>
			</div>
		</div>


			
	</div><!-- CONTAINER BOX -->


	<!-- INPUT EXAMINATION -->
	<div class="modal fade text-center" id="inexam" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="loginmodal-container">
				<div class="text-right">
					<a href="#" data-toggle="modal" data-target="#inexam"><img src="images/X.ico" width="20px"></a>
				</div>

				<form action = "DoctorInputController">
					<div>
						<label for="sel1">Select your Hospital</label>
						<select class="form-control" name="hospital_id" id="sel1">
							<option value="" selected disabled>Hospital</option>
							<option value = "1">Agios Savvas</option>
							<option value = "2">Iaso</option>
							<option value = "3">Lito</option>
							<option value = "4">Mitera</option>
							<option value = "5">Rea</option>
						</select>
					</div>
					<br>

					<div id="Radio">
						<label> Mother <input type="radio" name="choice" value="mother"/></label>
						<label>Child <input type="radio" name="choice" value="child" /></label>
						<div id="mother" class="select">
							<input type="text" name="afm" placeholder="AFM">
						</div>
						<div id="child" class="select">
							<input type="text" name="mother_id" placeholder="Mother's ID">
							<input type="text" name="dateOfBirth" placeholder="Child's Date of Birth">
						</div>
					</div>

					<h4 class = "text-center">Input Examination</h4>
					<input type="text" name="date" id="date" placeholder="Date of Examination">
					<input type="text" name="type" id="type" placeholder="Type of Examination">
					<input type="text" name="notes" id="notes" placeholder="Notes">
					<input type="text" name="patient_id" id="patient_id" placeholder="Patient ID">
					<input type="text" name="name" id="name" placeholder="Patient's name">
					<input type="text" name="surname" id="surname" placeholder="Patient's surname">
					
					<div>															
						<select class="form-control" name="HLA-A" id="sel1">
    						<option value="" selected disabled>HLA-A</option>
    						<option value="HLA-A*01:01:01:01">HLA-A*01:01:01:01</option>
    						<option value="HLA-A*24:02:01:01">HLA-A*24:02:01:01</option>
    						<option value="HLA-A*03:01:01:01">HLA-A*03:01:01:01</option>
    						<option value="HLA-A*29:02:01:01">HLA-A*29:02:01:01</option>
    						<option value="HLA-A*30:01:01">HLA-A*30:01:01</option>
						</select>
					</div>
					<br>
					<div>															
						<select class="form-control" name="HLA-B" id="sel1">
    						<option value="" selected disabled>HLA-B</option>
    						<option value="HLA-B*18:05">HLA-B*18:05</option>
    						<option value="HLA-B*37:01:01">HLA-B*37:01:01</option>
    						<option value="HLA-B*18:01:01:02">HLA-B*18:01:01:02</option>
    						<option value="HLA-B*27:05:02">HLA-B*27:05:02</option>
    						<option value="HLA-B*44:03:01:03">HLA-B*44:03:01:03</option>
						</select>
					</div>
					<br>
					<div>															
						<select class="form-control" name="HLA-C" id="sel1">
    						<option value="" selected disabled>HLA-C</option>
    						<option value="HLA-C*06:02:38">HLA-C*06:02:38</option>
    						<option value="HLA-C*12:03:08">HLA-C*12:03:08</option>
    						<option value="HLA-C*02:02:02:01">HLA-C*02:02:02:01</option>
    						<option value="HLA-C*12:03:01:01">HLA-C*12:03:01:01</option>
    						<option value="HLA-C*147:02:02:01">HLA-C*147:02:02:01</option>
						</select>
					</div>
					<br>
					<div>															
						<select class="form-control" name="HLA-DPB1" id="sel1">
    						<option value="" selected disabled>HLA-DPB1</option>
    						<option value="HLA-DPB1*01:01:01">HLA-DPB1*01:01:01</option>
    						<option value="HLA-DPB1*04:01:01:01">HLA-DPB1*04:01:01:01</option>
    						<option value="HLA-DPB1*10:01:01">HLA-DPB1*10:01:01</option>
    						<option value="HLA-DPB1*02:01:02">HLA-DPB1*02:01:02</option>
    						<option value="HLA-DPB1*124:01">HLA-DPB1*124:01</option>
						</select>
					</div>
					<br>
					<div>															
						<select class="form-control" name="HLA-DQA1" id="sel1">
    						<option value="" selected disabled>HLA-DQA1</option>
    						<option value="HLA-DQA1*01:02:02">HLA-DQA1*01:02:02</option>
    						<option value="HLA-DQA1*05:05:01:02">HLA-DQA1*05:05:01:02</option>
    						<option value="HLA-DQA1*01:04:01:02">HLA-DQA1*01:04:01:02</option>
    						<option value="HLA-DQA1*02:01:01:02">HLA-DQA1*02:01:01:02</option>
    						<option value="HLA-DQA1*03:01:01">HLA-DQA1*03:01:01</option>
						</select>
					</div>
					<br>
					<div>															
						<select class="form-control" name="HLA-DQB1" id="sel1">
    						<option value="" selected disabled>HLA-DQB1</option>
    						<option value="HLA-DQB1*03:01:01:03">HLA-DQB1*03:01:01:03</option>
    						<option value="HLA-DQB1*05:02:01">HLA-DQB1*05:02:01</option>
    						<option value="HLA-DQB1*02:02:01:01">HLA-DQB1*02:02:01:01</option>
    						<option value="HLA-DQB1*05:03:01:01">HLA-DQB1*05:03:01:01</option>
    						<option value="HLA-DQB1*03:02:01">HLA-DQB1*03:02:01</option>
						</select>
					</div>
					<br>
					<div>															
						<select class="form-control" name="HLA-DRB1" id="sel1">
    						<option value="" selected disabled>HLA-DRB1</option>
    						<option value="HLA-DRB1*11:01:01:01">HLA-DRB1*11:01:01:01</option>
    						<option value="HLA-DRB1*16:01:01">HLA-DRB1*16:01:01</option>
    						<option value="HLA-DRB1*07:01:01:01">HLA-DRB1*07:01:01:01</option>
    						<option value="HLA-DRB1*14:54:01">HLA-DRB1*14:54:01</option>
    						<option value="HLA-DRB1*04:02:01">HLA-DRB1*04:02:01</option>
						</select>
					</div>
					<br>
					<input type="submit" data-inline="true" value="Submit">
				</form>
			</div>
		</div>
	</div><!-- INPUT EXAMINATION -->

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