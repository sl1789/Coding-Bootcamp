<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
<title>About</title>
</head>

<body>

	<!-- NAVBAR-->
	<jsp:include page="NavBar.jsp"></jsp:include>
	<!-- NAVBAR-->
	
	<br><br><br><br><br><br>
	
	<!-- IMAGE -->
	<div class="row">
		<div class="col-md-12 padding-0">
			<img class="img-responsive img-center" src="images/p.jpeg" alt="" width="full" height="150" />
		</div>    
	</div> <!-- IMAGE -->

	<br><br>

	<!-- CONTAINER TEXTS -->
	<div class="container-fluid">
		<div class="col-md-4 col-sm-8">
			<h2>Why choose us?</h2>
				<p class="text-justify">BioLab provides user friendly web tools for accessing HLA-typing information. Integrates the results of specialized health examinations with literature information making an excellent choice for both researchers and clinicians. BioLab is a long waited solution to the problem of data transfer between Greek Hospitals and Biomedical research laboratories.</p>
		</div>
		<div class="col-md-4 col-sm-8">
			<h2>Useful</h2>
				<ul class="text-justify">
					<li>Easy to use. As simple as a common web site thus performing sophisticated functions.</li>
					<li>Web based. Access from everywhere without the need of installing several programs.</li>
					<li>Integrated. Designed to provide information from different web sites, hospitals and research labs all in one place.</li>
				</ul>
		</div>
		<div class="col-md-4 col-sm-8">
			<h2>Testimonial</h2>
			    <div id="testimonials">
        		<ul>
					<li>
						<blockquote class="text-justify">BioLab accelerated the process of verifying the compatibility and availability of transplants improving the health services offered to patient.</blockquote>
						<p class="author">"Dr. Manolas, Oncologist, Agios Savvas Hospital"</p>
					</li>
					<li>
						<blockquote class="text-justify">BioLab is a unique platform offering solution to the long-time waited problem of data distribution between clinicians and researchers.</blockquote>
						<p class="author">"Dr. Gianidis, Head of BRFAA Scientific Board"</p>
					</li>
					<li>
						<blockquote class="text-justify">BioLAb automates and accelerates the integration of multiple data saving a significant amount of time during HLA-typing.</blockquote>
						<p class="author">"Dr. Anastasiou, Research fellow, Hellenic Cord Blood Bank"</p>
					</li>
        			</ul>
    		</div>
		
		</div>
	</div><!-- CONTAINER TEXTS -->

	<br><br>

	<!-- CONTAINER BOX -->
	<div class="container-fluid">
		<h2 class="text-center">Our Team</h2>
		<div class="col-md-4 col-sm-8">

			<div class="contain">
				<img src="images/efthimis.jpg" class="img-circle" alt="EA" width="200" height="200">
				<h2 class="text-center">Efthimis Avgeris</h2>
				<h3 class="text-center"><dfn>Bioinformatician</dfn></h3>
				<p>Laborum et dolorum fuga harum quidem rerum facilis et expedita distinctio nam libero tempore.</p>
				<a class="icon-color" href="https://www.linkedin.com/in/efthimis-avgeris-aa5a2567/">
					<span class="fa-stack fa-lg">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
					</span>
				</a>
			</div>
		</div>
		<div class="col-md-4 col-sm-8">
			<div class="contain">
				<img src="images/poly.png" class="img-circle" alt="PG" width="200" height="200">
				<h2 class="text-center">Polyanna Gkatsiou</h2>					<h3 class="text-center"><dfn>Web Developer</dfn></h3>
				<p>Laborum et dolorum fuga harum quidem rerum facilis et expedita distinctio nam libero tempore.</p>
				<a class="icon-color" href="https://www.linkedin.com/in/polyanna-polyxeni-gkatsiou/">
					<span class="fa-stack fa-lg">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
					</span>
				</a>
			</div>
		</div>
		<div class="col-md-4 col-sm-8">
			<div class="contain">
				<img src="images/spyros.jpg" class="img-circle" alt="SL" width="200" height="200">
				<h2 class="text-center">Spyros Louvis</h2>
				<h3 class="text-center"><dfn>Developer</dfn></h3>
				<p>Laborum et dolorum fuga harum quidem rerum facilis et expedita distinctio nam libero tempore.</p>
				<a class="icon-color" href="https://www.linkedin.com/in/spyros-louvis-6743a240/">
					<span class="fa-stack fa-lg">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
					</span>
				</a>
			</div>
		</div>
	</div><!-- CONTAINER BOX -->
				
	<!-- SCRIPTS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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