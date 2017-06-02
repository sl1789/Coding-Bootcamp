<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.DoctorDAO"%>
<%@ page import="model.User"%>
<%@ page import="model.Doctor"%>

	<div class="navbar-wrapper">
		<div class="container">
			<nav class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">BioLab</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp"><img src="images/home.png"
								alt="Home"></a></li>
						<li><a href="about.html">About</a></li>
						<li class="active"><a href="ourproject.html">Our Project</a></li>
						<li><a href="contact.html">Contact</a></li>
						<%
							if (session.getAttribute("user") != null) {
						%>
						<li class="dropdown"><a href="services.html"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">CBB_DB<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<%
									User user = (User) session.getAttribute("user");
								%>
								<%
									if (user instanceof Doctor) {
								%><!-- Maybe we need to change that to int x = ddao.ifDoctor(username) -->
								<li><a href="#">3rd Action</a></li>
								<li><a href="#">4th action</a></li>
								<%
									}
								%>
							</ul>
							<%
								}
							%></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<%
							if (session.getAttribute("user") == null) {
						%>
						<li id="log"><a class="log" href="#" data-toggle="modal"
							data-target="#login-modal"><img src="images/log1.png"
								width="13px"> Login</a></li>
						<li id="sign"><a href="#" data-toggle="modal"
							data-target="#sign-up">Sign up</a></li>
						<%
							} else {
								User user = (User) session.getAttribute("user");
						%>
						<li class="text-right"><%=user.getUsername()%></li>
						<li id="logout"><a href="logout.jsp" data-toggle="modal"
							>Log out</a></li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
			</nav>
		</div>
	</div>
	<!-- NAVBAR-->
	
	<!-- LOGIN -->
		<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="loginmodal-container">
				<div class="text-right">
					<a href="#" data-toggle="modal" data-target="#login-modal"><img
						src="images/X.ico" width="20px"></a>
					</div>
					<h1>Login to Your Account</h1>
					<br>
					<form action="login">
						<input type="text" name="username" placeholder="Username or Email" required> <input
						type="password" name="password" placeholder="Password" required> <input
						type="submit" name="login" class="login loginmodal-submit"
						value="Login">
					</form>
					<div class="login-help">
						<a href="#" data-toggle="modal" data-target="#sign-up">Register</a>
					</div>
				</div>
			</div>
		</div> <!-- LOGIN -->

		<!-- SIGN UP USER -->
		<div class="modal fade" id="sign-up" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog">
			<div class="loginmodal-container">
				<div class="text-right">
					<a href="#" data-toggle="modal" data-target="#sign-up"><img
						src="images/X.ico" width="20px"></a>
					</div>
					<h1>Create Account</h1>
					<br>
					<form action="register" method="post" name="index">
						<div>
							<label><input type="checkbox" name="colorCheckbox"
								value="red"> Are you a doctor?</label>
							</div>
							<label class="red box">Doctor's Credential</label> <input class="red box"
							type="text" name="credential" placeholder="Credential" required>
							<label for="name">Your Name</label> <input type="text" name="name" placeholder="Your Name" required> <label
							for="surname">Your Surname</label> <input type="text"
							name="surname" placeholder="Your Surname" required> <label
							for="email">Your Email</label> <input type="email" name="email"
							placeholder="Your Email" required> <label for="username">Username</label>
							<input type="text" name="username" placeholder="Username" required>
							<label for="password">Password</label> <input type="password"
							name="password" placeholder="Password"> <label for="confirm">Confirm
							Password</label> <input type="password" name="confirm"
							placeholder="Password" required> <input type="submit"
							name="sign" class="login loginmodal-submit" value="Sign up">
						</form>
					</div>
				</div>
			</div><!-- SIGN UP USER -->