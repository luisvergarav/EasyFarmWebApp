<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html lang="en">
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>EasyFarm Web App</title>

<!-- Bootstrap Core CSS -->
<link href="<c:url value='/resources/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value='/resources/css/shop-homepage.css'/>"
	rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">EasyFarm</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->

			<div class="dropdown" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<%
						if (request.isUserInRole("ROLE_USER")) {
					%>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Promociones</a>
						<ul class="dropdown-menu" role="menu">

							<li role="presentation"><a class="menuajax"
								href="addPromocion">Agregar</a></li>


						</ul></li>
					<%
						}
					%>
					<%
						if (request.isUserInRole("ROLE_USER")) {
					%>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Articulos</a>
						<ul class="dropdown-menu" role="menu">

							<li role="presentation"><a class="menuajax"
								href="addArticulo">Agregar</a></li>


						</ul></li>
					<%
						}
					%>

					<li><a href="<c:url value="/j_spring_security_logout" />">
							Logout</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<%
		List<String> errores = request.getAttribute("errores") != null
				? (List<String>) request.getAttribute("errores")
				: new ArrayList<String>();
		if (errores.size() > 0) {

			for (String s : errores) {
	%>
	<div class="alert alert-error">
		<a class="close" data-dismiss="alert">×</a> <strong><%=s%></strong>
	</div>
	<%
		}
		}
	%>

	<!-- Page Content -->
	<div class="container">


		<div class="row">

			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bell fa-fw"></i> Notifications Panel
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="list-group">
							<a href="#" class="list-group-item"> <i
								class="fa fa-comment fa-fw"></i> New Comment <span
								class="pull-right text-muted small"><em>4 minutes
										ago</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-twitter fa-fw"></i> 3 New Followers <span
								class="pull-right text-muted small"><em>12 minutes
										ago</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-envelope fa-fw"></i> Message Sent <span
								class="pull-right text-muted small"><em>27 minutes
										ago</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-tasks fa-fw"></i> New Task <span
								class="pull-right text-muted small"><em>43 minutes
										ago</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-upload fa-fw"></i> Server Rebooted <span
								class="pull-right text-muted small"><em>11:32 AM</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-bolt fa-fw"></i> Server Crashed! <span
								class="pull-right text-muted small"><em>11:13 AM</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-warning fa-fw"></i> Server Not Responding <span
								class="pull-right text-muted small"><em>10:57 AM</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-shopping-cart fa-fw"></i> New Order Placed <span
								class="pull-right text-muted small"><em>9:49 AM</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-money fa-fw"></i> Payment Received <span
								class="pull-right text-muted small"><em>Yesterday</em> </span>
							</a>
						</div>
						<!-- /.list-group -->
						<a href="#" class="btn btn-default btn-block">View All Alerts</a>
					</div>
					<!-- /.panel-body -->
				</div>
			</div>


			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bell fa-fw"></i> Status
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-3">
												<i class="fa fa-comments fa-5x"></i>
											</div>
											<div class="col-xs-9 text-right">
												<div class="huge">26</div>
												<div>New Comments!</div>
											</div>
										</div>
									</div>
									<a href="#">
										<div class="panel-footer">
											<span class="pull-left">View Details</span> <span
												class="pull-right"><i
												class="fa fa-arrow-circle-right"></i></span>
											<div class="clearfix"></div>
										</div>
									</a>

								</div>

							</div>
							<div class="col-lg-6 col-md-6">
								<div class="panel panel-green">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-3">
												<i class="fa fa-tasks fa-5x"></i>
											</div>
											<div class="col-xs-9 text-right">
												<div class="huge">12</div>
												<div>New Tasks!</div>
											</div>
										</div>
									</div>
									<a href="#">
										<div class="panel-footer">
											<span class="pull-left">View Details</span> <span
												class="pull-right"><i
												class="fa fa-arrow-circle-right"></i></span>
											<div class="clearfix"></div>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="row">

							<div class="col-lg-6 col-md-6">
								<div class="panel panel-yellow">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-3">
												<i class="fa fa-shopping-cart fa-5x"></i>
											</div>
											<div class="col-xs-9 text-right">
												<div class="huge">124</div>
												<div>New Orders!</div>
											</div>
										</div>
									</div>
									<a href="#">
										<div class="panel-footer">
											<span class="pull-left">View Details</span> <span
												class="pull-right"><i
												class="fa fa-arrow-circle-right"></i></span>
											<div class="clearfix"></div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="panel panel-red">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-3">
												<i class="fa fa-support fa-5x"></i>
											</div>
											<div class="col-xs-9 text-right">
												<div class="huge">13</div>
												<div>Support Tickets!</div>
											</div>
										</div>
									</div>
									<a href="#">
										<div class="panel-footer">
											<span class="pull-left">View Details</span> <span
												class="pull-right"><i
												class="fa fa-arrow-circle-right"></i></span>
											<div class="clearfix"></div>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>






			<div class="col-md-5">

				<div class="row carousel-holder">

					<div class="col-md-12">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img class="slide-image" src="http://placehold.it/800x600"
										alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="http://placehold.it/800x600"
										alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="http://placehold.it/800x600"
										alt="">
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-example-generic"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>

				</div>
			</div>

		</div>
		<div class="row">

			<div class="col-md-8">
				<div class="row">

					<div class="col-sm-4 col-lg-4 col-md-4">
						<div class="thumbnail">
						<a href="listadoArticulos"> 
							<img 
								src="https://placeholdit.imgix.net/~text?txtsize=24&txt=260%C3%97180&w=260&h=100"
								alt="">
						</a>

						</div>
					</div>
					<div class="col-sm-4 col-lg-4 col-md-4">
						<div class="thumbnail">
						<a href="listadoPromociones"> 
							<img
								src="https://placeholdit.imgix.net/~text?txtsize=24&txt=260%C3%97180&w=260&h=100"
								alt="">
						</a>

						</div>
					</div>

				</div>



			</div>
		</div>
	</div>


	<!-- Opciones -->

	<div class="container">
		<div class="row">


			<div class="col-md-3"></div>

			<div class="col-md-9"></div>
		</div>
	</div>
	<!-- Cuerpo -->
	<input
		value="${almacen.ubicacion.calle} ${almacen.ubicacion.numeroCalle} ${almacen.ubicacion.comuna} ${almacen.ubicacion.region} Chile"
		id="direccionAlmacen" hidden="true">

	<div class="container">

		<hr>

		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Your Website 2016</p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="<c:url value='/resources/js/jquery.js'/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>


	<!-- Google api staff -->

	<script>
		function initMap() {
			var divMap = document.getElementById('map');
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 8,
				center : {
					lat : -34.397,
					lng : 150.644
				}
			});
			var geocoder = new google.maps.Geocoder();

			geocodeAddress(geocoder, map);

		}

		function geocodeAddress(geocoder, resultsMap) {

			//direccion entrada 
			var address = document.getElementById('direccionAlmacen').value;
			//var address = 'las salitreras 8010';
			geocoder
					.geocode(
							{
								'address' : address
							},
							function(results, status) {
								if (status === google.maps.GeocoderStatus.OK) {
									resultsMap
											.setCenter(results[0].geometry.location);
									var marker = new google.maps.Marker({
										map : resultsMap,
										position : results[0].geometry.location
									});
								} else {
									alert('Geocode was not successful for the following reason: '
											+ status);
								}
							});
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcN_ZKmKLGJ35AwXhfI4V9T87Gv9GQZkI&signed_in=true&callback=initMap">
		
	</script>
</body>

</html>
