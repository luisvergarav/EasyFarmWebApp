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

<title>Shop Homepage - Start Bootstrap Template</title>

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

		<div class="panel panel-default">
			<div class="panel-body">Datos Articulo</div>
			<form:form id="crearArticuloForm" commandName="articuloCmd" method="POST"
				action="addArticulo" class="form-horizontal">


				<form:hidden path="id.idAlmacen" class="form-control" id="idAlmacen"
					placeholder="Id Almacen" />

				<div class="form-group">
					<label for="nombrearticulo" class="control-label col-xs-5">Nombre
						Articulo</label>
					<div class="col-xs-5">
						<form:input path="nombreArticulo" type="text" class="form-control"
							id="nombrearticulo" placeholder="Nombre Articulo" required="true"/>
					</div>
				</div>

				<div class="form-group">
					<label for="precio" class="control-label col-xs-5">Precio</label>
					<div class="col-xs-5">
						<form:input path="precio" type="text" class="form-control"
							id="precio" placeholder="Precio" required="true"/>
					</div>
				</div>


				<div class="form-group">
					<label for="cantidad" class="control-label col-xs-5">Cantidad</label>
					<div class="col-xs-5">
						<form:input path="cantidad" type="text" class="form-control"
							id="cantidad" placeholder="Cantidad" required="true"/>
					</div>
				</div>



				<%-- <div class="form-group">
					<label for="unidadMedida" class="control-label col-xs-5">Unidad Medida</label>
					<div class="col-xs-5">
						<form:input path="unidadMedida" type="text" class="form-control"
							id="unidadMedida" placeholder="Unidad Medida" required="true"/>
					</div>
				</div> --%>
				
				<div class="form-group">
                    <label for="unidadMedida" class="control-label col-xs-5">Unidad Medida</label>
                    <div class="col-xs-5">
                        <form:select  path="unidadMedida" class="form-control" >                                                       
                            <form:option   value="KG" label="KG"/>
                            <form:option   value="Saco" label="Saco"/>
                            
                        </form:select>
                    </div>
                </div>
                
				<div class="form-group">
					<label for="fechaactualizacion" class="control-label col-xs-5">Fecha
						Actualizacion</label>
					<div class="col-xs-5">
						<form:input path="fechaActualizacion" type="text"
							class="form-control" id="fechaactualizacion"
							placeholder="Fecha Actualizacion" required="true"/>
					</div>
				</div>

				<%-- 	<div class="form-group">
                    <label for="tipoarticulo" class="control-label col-xs-2">Tipo Articulo</label>
                    <div class="col-xs-10">
                        <form:select  path="articulo.tipoarticulo.idtipoarticulo" class="form-control" >
                            <form:option   value="0" label="Elige un Tipo de articulo"/>                            
                            <form:options items="${tiposArticulos.tiposArticulos.tipoArticulo}" itemValue="idtipoarticulo" itemLabel="descripcion"/>
                        </form:select>
                    </div>
                </div> --%>


				<div class="form-group">
					<div class="col-xs-offset-5 col-xs-5">
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
				</div>







			</form:form>
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
<script>
		$(document)
				.ready(
						function() {
							$('#crearArticuloForm')
									.bootstrapValidator(
											{
												framework : 'bootstrap',
												icon : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													'fechaactualizacion' : {
														row : '.col-xs-10',
														validators : {
															notEmpty : {
																 format: 'YYYY/MM/DD',
																message : 'Debe ingresar fecha Actualizacion'
															}
														}
													},
													'unidadMedida' : {
														row : '.col-xs-10',
														validators : {
															notEmpty : {
																message : 'Debe indicar Unidad Medida'
															}
														}
													},
													'cantidad' : {
														validators : {
															notEmpty : {
																message : 'Debe ingresar Cantidad'
															}
														}
													},
													'nombrearticulo' : {
														validators : {
															notEmpty : {
																message : 'Debe indicar Nombre Articulo'
															}
														}
													},
													'precio' : {
														validators : {
															notEmpty : {
																message : 'Debe indicar Precio'
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
