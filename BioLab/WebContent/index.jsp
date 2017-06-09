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
<title>BioLab</title>
</head>

<body>

	<!-- NAVBAR-->
	<jsp:include page="NavBar.jsp"></jsp:include>
	<!-- NAVBAR-->
	
	<!-- Carousel-->
	<div id="myCarousel" class="carousel slide" data-ride="carousel"
		data-interval="3000">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="images/slide-1.jpg" width="1200"
					height="400" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>BioLab</h1>
						<p>
							<a class="btn btn-lg btn-primary" href="#" data-toggle="modal"
								data-target="#sign-up" role="button">Sign up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="images/slide-2.jpg" width="1200"
					height="400" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>BioLab</h1>
						<p>
							<a class="btn btn-lg btn-primary" href="#" data-toggle="modal"
								data-target="#sign-up" role="button">Sign up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="images/slide-3.jpg" width="1200"
					height="400" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>BioLab</h1>
						<p>
							<a class="btn btn-lg btn-primary" href="#" data-toggle="modal"
								data-target="#sign-up" role="button">Sign up today</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- carousel -->

	<!-- CONTAINER BOX -->

	<div class="container">
		<div class="col-md-12 col-sm-12">
			<div class="contain">
				<p class="text-justify">Development in the fields of biomedical
					and health informatics are driving major expansion in big-data, not
					only because of the sheer volume of information generated, but also
					due to the complexity, diversity, and the rich context of the data
					that encompasses discoveries from basic sciences to clinical
					translation, to health systems and large-scale population studies
					on determinants of health. This general trend also brings
					socio-legal implications.</p>
				<p class="text-justify">New data analytic tools to facilitate
					scalable, accessible and sustainable data infrastructure for
					effective management of large, multiscale, multimodal, distributed
					and heterogeneous data sets and convert data into knowledge for
					support cost-effective decision aids, disease management, and care
					delivery need to be developed. In promoting big-data as a source of
					innovation in healthcare and accelerating the translational
					pathways from the laboratory bench to the patient's bedside, this
					special issue includes a collection of papers addressing some of
					medical and health informatics challenges related to big data.
					Papers submitted cover a range of topics, from bioinformatics,
					imaging informatics, sensor informatics, medical informatics to
					public health informatics. They also include initiatives that
					enable use of big-data analytics in health systems for improved
					clinical decision making, enhanced efficiency of care provision.</p>
			</div>
		</div>
		<div class="col-md-6 col-sm-6">
			<div class="contain">
				<img src="images/icon-2.png" alt="Clinical usage">
				<h2 class="text-center">Clinical usage</h2>
				<p class="text-justify">BioLab is a platform for storing,
					integrating and tracking results derived from HLA-typing
					examination of mother and infant's Hematopoietic Stem Cells (HSC)
					using next generation sequencing. HLA-typing is a crucial
					examination for deciding the compatibility of a HSC transplantation
					on patients, most commonly suffering from blood cells cancer types
					like leukemia. Furthermore BioLab can store information about the
					availability of a specific transplant across Greek Hospitals.</p>

			</div>
		</div>
		<div class="col-md-6 col-sm-6">
			<div class="contain">
				<img src="images/icon-1.png" alt="Research">
				<h2 class="text-center">Research</h2>
				<p class="text-justify">BioLab provides important real
					populations data for advanced research on HLA field bridging the
					gap of data transmission between hospitals and research labs. This
					allows researchers to access crucial clinical information in order
					to perform population studies.</p>
				<br> <br> <br> <br>
			</div>
		</div>
	</div>
	<!-- CONTAINER BOX -->

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