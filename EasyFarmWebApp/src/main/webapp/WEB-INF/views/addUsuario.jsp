<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>EasyFarm Web APP</title>

<!-- Bootstrap Core CSS -->
<link href="<c:url value='/resources/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value='/resources/css/shop-homepage.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/css/bootstrapValidator.min.css'/>"
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
			<!-- <div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">About</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div> -->
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<h3>Crear Cuenta Usuario</h3>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-body "><h3>Productor</h3></div>
					<form:form id="crearUsuarioForm" commandName="usuarioCmd"
						method="POST" action="addUsuario" class="form-horizontal">

						<form:hidden path="role" value="ROLE_USER" class="form-control"
							id="role" />

						<div class="form-group">
							<label for="inputNombreUsuario" class="control-label col-xs-5">Nombre
								Usuario</label>
							<div class="col-xs-5">
								<form:input path="usuario.nombre" class="form-control"
									id="inputNombreUsuario" placeholder="Nombre Usuario"
									required="true" />
							</div>

						</div>
						<div class="form-group">
							<label for="inputNick" class="control-label col-xs-5">Nick</label>
							<div class="col-xs-5">
								<form:input path="usuario.nick" type="text" class="form-control"
									id="inputNick" placeholder="Nick" required="true" />
							</div>
						</div>


						<div class="form-group">
							<label for="password" class="control-label col-xs-5">Password</label>
							<div class="col-xs-5">
								<form:password path="usuario.password" 
									class="form-control" id="inputPassword" placeholder="Password"
									required="true" />
							</div>
						</div>



						<div class="form-group">
							<div class="col-xs-offset-2 col-xs-10">
								<div class="checkbox">
									<label><form:checkbox path="usuario.activo" value="1" />
										Activar ?</label>
								</div>
							</div>
						</div>



						<div class="form-group">
							<div class="col-xs-offset-2 col-xs-10">
								<button type="submit" class="btn btn-primary">Enviar</button>
							</div>
						</div>








					</form:form>
				</div>
			</div>
			<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-body "><h3>Cliente</h3></div>
				<form:form id="crearUsuarioForm" commandName="usuarioCmd"
					method="POST" action="addUsuario" class="form-horizontal">

					<form:hidden path="role" value="ROLE_CLIENT" class="form-control"
						id="role" />

					<div class="form-group">
						<label for="inputNombreUsuario" class="control-label col-xs-5">Nombre
							Usuario</label>
						<div class="col-xs-5">
							<form:input path="usuario.nombre" class="form-control"
								id="inputNombreUsuario" placeholder="Nombre Usuario"
								required="true" />
						</div>

					</div>
					<div class="form-group">
						<label for="inputNick" class="control-label col-xs-5">Nick</label>
						<div class="col-xs-5">
							<form:input path="usuario.nick" type="text" class="form-control"
								id="inputNick" placeholder="Nick" required="true" />
						</div>
					</div>


					<div class="form-group">
						<label for="password" class="control-label col-xs-5">Password</label>
						<div class="col-xs-5">
							<form:password path="usuario.password" 
								class="form-control" id="inputPassword" placeholder="Password"
								required="true" />
						</div>
					</div>



					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<div class="checkbox">
								<label><form:checkbox path="usuario.activo" value="1" />
									Activar ?</label>
							</div>
						</div>
					</div>



					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<button type="submit" class="btn btn-primary">Enviar</button>
						</div>
					</div>








				</form:form>
			</div>
		</div>
		</div>
	</div>
	<!-- /.container -->

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

	<script src="<c:url value='/resources/js/bootstrapValidator.min.js'/>"></script>
	<!-- Validacion -->

	<script>
		$(document)
				.ready(
						function() {
							$('#crearUsuarioForm')
									.bootstrapValidator(
											{
												framework : 'bootstrap',
												icon : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													'inputNombreUsuario' : {
														row : '.col-xs-10',
														validators : {
															notEmpty : {
																message : 'Debe ingresar un nombre para el Usuario'
															}
														}
													},
													'inputNick' : {
														row : '.col-xs-10',
														validators : {
															notEmpty : {
																message : 'Debe seleccionar una Imagen'
															}
														}
													},
													'inputPassword' : {
														validators : {
															notEmpty : {
																message : 'Debe ingresar La calle'
															}
														}
													}
												}
											});
						});
	</script>
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
			var address = document.getElementById('direccionUsuario').value;
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
