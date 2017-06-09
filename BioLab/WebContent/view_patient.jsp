<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.PatientDAO"%>
<%@ page import="model.Patient"%>
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




<%
	PatientDAO patient = new PatientDAO();
	ArrayList<Patient> patientlist = (ArrayList<Patient>) request.getAttribute("patients-results");
%>





	<div class="container">
		<div class="page-header">
			<h1 class="text-center">
				Αποτελέσματα Αναζήτησης
				<%
				if (patientlist != null && patientlist.size() > 0) {
			%>

				<span class="badge"><%=patientlist.size()%></span>

				<%
					}
				%>
			</h1>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="table-responsive">
					<table
						class="table table-striped table-bordered table-hover table-condensed">
						<tr class="warning">
							<th>patient_id</th>
							<th>name</th>
							<th>surname</th>
							<th>HLA-A</th>
							<th>HLA-B</th>
							<th>HLA-C</th>
							<th>HLA-DPB1</th>
							<th>HLA-DQA1</th>
							<th>HLA-DQB1</th>
							<th>HLA-DRB1</th>
							
						</tr>

						<%
							if (patientlist == null || patientlist.size() == 0) {
						%>
						<tr>
							<td colspan="3" class="bg-danger text-center">No results
								found using: &apos;<b><%=request.getParameter("surname")%></b>&apos;
							</td>
						</tr>
						<%
							} else {

								for (Patient patient1 : patientlist) {
						%>
						<tr>
							<td><%=patient1.getPatientId()%></td>
							<td><%=patient1.getName()%></td>
							<td><%=patient1.getSurname()%></td>
							<td><%=patient1.getHLA_A()%></td>
							<td><%=patient1.getHLA_B()%></td>
							<td><%=patient1.getHLA_C()%></td>
							<td><%=patient1.getHLA_DPB1()%></td>
							<td><%=patient1.getHLA_DQA1()%></td>
							<td><%=patient1.getHLA_DQB1()%></td>
							<td><%=patient1.getHLA_DRB1()%></td>
							
						</tr>
						<%
							}
						%>


						<%
							}
						%>
					</table>
				</div>
			</div>
		</div>
	</div>
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