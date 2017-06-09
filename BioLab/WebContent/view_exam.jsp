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
	<title>View Examination</title>
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
	ExamDAO patient = new ExamDAO();
	ArrayList<Examination> examlist = (ArrayList<Examination>) request.getAttribute("view_exam");
%>

	<div class="container">
		<div class="page-header">
			<h1 class="text-center">
				Αποτελέσματα Αναζήτησης
				<%
				if (examlist != null && examlist.size() > 0) {
			%>

				<span class="badge"><%=examlist.size()%></span>

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
							<th>Doctor's Username</th>
							<th>Examination Date</th>
							<th>Examination Type</th>
							<th>Notes</th>
							<th>Patient ID</th>
							
							
						</tr>

						<%
							if (examlist == null || examlist.size() == 0) {
						%>
						<tr>
							<td colspan="3" class="bg-danger text-center">No results
								found using: &apos;<b><%=request.getParameter("surname")%></b>&apos;
							</td>
						</tr>
						<%
							} else {

								for (Examination exam1 : examlist) {
						%>
						<tr>
							
							<td><%=exam1.getFk_username()%></td>
							<td><%=exam1.getDate()%></td>
							<td><%=exam1.getType()%></td>
							<td><%=exam1.getNotes()%></td>
							<td><%=exam1.getPatient_id()%></td>
							
							
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