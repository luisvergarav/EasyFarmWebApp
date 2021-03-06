<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

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
	<%
		List<String> errores = request.getAttribute("errores") != null
				? (List<String>) request.getAttribute("errores")
				: new ArrayList<String>();
		if (errores.size() > 0) {

			for (String s : errores) {
	%>
	<div class="alert alert-error">
		<a class="close" data-dismiss="alert">�</a> <strong><%=s%></strong>
	</div>
	<%
		}
		}
	%>
	<!-- Page Content -->
	<div class="container">

		<div class="panel panel-default">
			<div class="panel-body">Datos Basicos del Productor</div>
			<form:form id="crearAlmacenForm" commandName="almacenCmd"
				method="POST" action="addProductor" class="form-horizontal">

				<div class="form-group">
					<label for="inputNombreAlmacen" class="control-label col-xs-2">Nombre
						Productor</label>
					<div class="col-xs-10">
						<form:input path="nombreAlmacen" class="form-control"
							id="inputNombreAlmacen" placeholder="Nombre Almacen"
							required="true" />
					</div>

				</div>
				<div class="form-group">
					<label for="inputImagen" class="control-label col-xs-2">Imagen</label>
					<div class="col-xs-10">
						<form:input path="imagen" type="text" class="form-control"
							id="inputImagen" placeholder="Imagen" required="true" />
					</div>
				</div>

				<%-- 		<div class="form-group">
                    <label for="tipoalmacen" class="control-label col-xs-2">Tipo Almacen</label>
                    <div class="col-xs-10">
                        <form:select  path="tipoAlmacenBean.idtipoalmacen" class="form-control" >
                            <form:option   value="1" label="Elige un Tipo de almacen"/>                            
                            <form:options items="${tiposAlmacen}" itemValue="idtipoalmacen" itemLabel="descripcion" required="true"/>
                        </form:select>
                    </div>
                </div> --%>

<%-- 				<div class="form-group">
					<label for="tipoalmacen_1" class="control-label col-xs-2">Tipo
						Almacen</label>
					<div class="col-xs-10">
						<form:input path="tipoAlmacen" type="text" class="form-control"
							id="tipoalmacen1" placeholder="Tipo Almacen" required="true" />
					</div>
				</div> --%>

				<form:hidden path="tipoAlmacen" class="form-control" id="tipoalmacen1" value="tipo"/>

				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						<div class="checkbox">
							<label><form:checkbox path="activo" value="1" /> Activar
								?</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
				</div>




				<div class="panel panel-deault">
					<div class="panel-body">Ubicacion</div>


					<div class="form-group">
						<label for="inputCalle" class="control-label col-xs-2">Calle</label>
						<div class="col-xs-10">
							<form:input path="ubicacion.calle" class="form-control"
								id="inputCalle" placeholder="Calle" required="true"/>
						</div>
					</div>
					<div class="form-group">
						<label for="inputNumeroCalle" class="control-label col-xs-2">Numero
							de calle</label>
						<div class="col-xs-10">
							<form:input path="ubicacion.numeroCalle" class="form-control"
								id="inputNumeroCalle" placeholder="Numero de Calle" required="true"/>
						</div>
					</div>

					<div class="form-group">
						<label for="inputLatitud" class="control-label col-xs-2">Latitud</label>
						<div class="col-xs-10">
							<form:input path="ubicacion.latitud" class="form-control"
								id="inputLatitud" placeholder="Latitud" required="true" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputLongitud" class="control-label col-xs-2">Longitud</label>
						<div class="col-xs-10">
							<form:input path="ubicacion.longitud" class="form-control"
								id="inputLongitud" placeholder="Longitud" required="true" />
						</div>
					</div>

	<%-- 				<div class="form-group">
						<label for="inputCiudad" class="control-label col-xs-2">Ciudad</label>
						<div class="col-xs-10">
							<form:input path="ubicacion.ciudad" class="form-control"
								id="inputCiudad" placeholder="Ciudad" required="true" />
						</div>
					</div> --%>
 					
 					<form:hidden path="ubicacion.ciudad" class="form-control" id="inputCiudad" value="santiago" placeholder="Id Almacen"/>



<%-- 
					<div class="form-group">
						<label for="inputComuna" class="control-label col-xs-2">Comuna</label>
						<div class="col-xs-10">
							<form:input path="ubicacion.comuna" class="form-control"
								id="inputComuna" placeholder="Comuna" required="true" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputRegion" class="control-label col-xs-2">Region</label>
						<div class="col-xs-10">
							<form:input path="ubicacion.region" class="form-control"
								id="inputRegion" placeholder="Region" required="true" />
						</div>
					</div> --%>

					<div class="form-group">
						<label for="inputRegion" class="control-label col-xs-2">Region</label>
						<div class="col-xs-10">
							<form:select path="ubicacion.region" class="form-control">
								<form:option value="0" label="Elige una Region" />
								<form:options items="${regiones}" itemValue="Descripcion"
									itemLabel="Descripcion" />
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<label for="inputComuna" class="control-label col-xs-2">Comuna</label>
						<div class="col-xs-10">
							<form:select path="ubicacion.comuna" class="form-control">
								<form:option value="0" label="Elige una Comuna" />
								<form:options items="${comunas}" itemValue="Descripcion"
									itemLabel="Descripcion" />
							</form:select>
						</div>
					</div>

				</div>
			</form:form>
		</div>
	</div>
	<!-- /.container -->

	<div class="container">
		�

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
							$('#crearAlmacenForm')
									.bootstrapValidator(
											{
												framework : 'bootstrap',
												icon : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													'inputNombreAlmacen' : {
														row : '.col-xs-10',
														validators : {
															notEmpty : {
																message : 'Debe ingresar un nombre para el Almacen'
															}
														}
													},
													'inputImagen' : {
														row : '.col-xs-10',
														validators : {
															notEmpty : {
																message : 'Debe seleccionar una Imagen'
															}
														}
													},
													'inputCalle' : {
														validators : {
															notEmpty : {
																message : 'Debe ingresar La calle'
															}
														}
													},
													'inputNumeroCalle' : {
														validators : {
															notEmpty : {
																message : 'Debe indicar Numero de Calle'
															}
														}
													},
													'inputLatitud' : {
														validators : {
															notEmpty : {
																message : 'Debe indicar Latitud'
															}
														}
													},
													'inputLongitud' : {
														validators : {
															notEmpty : {
																message : 'Debe indicar Longitud'
															}
														}
													},
													'inputCiudad' : {
														validators : {
															notEmpty : {
																message : 'Debe indicar la ciudad'
															}
														}
													},
													'inputComuna' : {
														validators : {
															notEmpty : {
																message : 'Debe indicar la comuna'
															}
														}
													},
													'inputRegion' : {
														validators : {
															notEmpty : {
																message : 'Debe indicar Region'
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
