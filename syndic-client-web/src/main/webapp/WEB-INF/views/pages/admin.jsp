
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>SyndicAPP - admin </title>

	<!-- Bootstrap core CSS -->

	<link href="/syndic/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/syndic/resources/fonts/css/font-awesome.min.css" rel="stylesheet">
	<link href="/syndic/resources/css/animate.min.css" rel="stylesheet">
	<!-- Custom styling plus plugins -->
	<link href="/syndic/resources/css/custom.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/syndic/resources/css/maps/jquery-jvectormap-2.0.3.css" />
	<link href="/syndic/resources/css/icheck/flat/green.css" rel="stylesheet">
	<link href="/syndic/resources/css/floatexamples.css" rel="stylesheet" />

	<script src="/syndic/resources/js/jquery.min.js"></script>

	<!--[if lt IE 9]>
	<script src="/syndic/resources/assets/js/ie8-responsive-file-warning.js"></script>
	<![endif]-->

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>


<body class="nav-md">

<div class="container body">


	<div class="main_container">


		<!-- menu left-->
			<%@include file="/WEB-INF/tiles/template/menu2.jsp"%>
		<!-- /menu left-->
		<!-- top navigation -->
			<%@include file="/WEB-INF/tiles/template/header2.jsp"%>
		<!-- /top navigation -->


		<!-- page content -->
		<div class="right_col" role="main">
			<div class="row">
				<div class="x_panel">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div  class="item active">
								<img style="margin :0 auto" src="/syndic/resources/images/banner.jpg" alt="Chania">
							</div>

							<div class="item">
								<img style="margin :0 auto" src="/syndic/resources/images/banner-recrutement.jpg" alt="Chania">
							</div>

							<div class="item">
								<img style="margin :0 auto" src="/syndic/resources/images/banner-contact.jpg" alt="Flower">
							</div>
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only"><</span>
						</a>
						<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">>></span>
						</a>
					</div>
					<br>
					<br>
					<br>
					<br>
					<div style="font-size: large; margin-left: 50px">
						<p>SyndicAPP est une solution qui vous permet d'effectuer les action suivantes : </p><br>
						<ul>
							<ol> - Créer des <b>évènements</b> </ol>
							<ol> - Gérer vos <b>utlisateurs</b> </ol>
							<ol> - Gérer vos <b>fournisseursw</b> </ol>
							<ol> - Gérer vos <b>corpropriétés</b> </ol>
						</ul>
					</div>
					<br>
					<br>
				</div>

			</div>
			<!-- footer content -->
			<footer style="margin:0px">
				<div class="copyright-info">
					<p class="pull-right">MM2C15 - MIAGE Nanterre <a href="https://colorlib.com">SyndicAPP</a>
					</p>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->

		</div>
		<!-- /page content -->
	</div>


</div>

<div id="custom_notifications" class="custom-notifications dsp_none">
	<ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
	</ul>
	<div class="clearfix"></div>
	<div id="notif-group" class="tabbed_notifications"></div>
</div>

</body>

</html>
<%@include file="/WEB-INF/tiles/template/templateJs.jsp"%>