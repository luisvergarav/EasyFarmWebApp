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

		<div class="panel panel-default">
			<div class="panel-body">Datos Promocion</div>
			<form:form id="verPromocionForm" commandName="promocionCmd"
				method="POST" action="verPromocion" class="form-horizontal">

				<form:hidden path="id.idPromocion" />
				<form:hidden path="id.idAlmacen" />
				<div class="form-group">
					<label for="inputDescripcion" class="control-label col-xs-5">Descripcion</label>
					<div class="col-xs-5">
						<form:input path="descripcion" class="form-control"
							id="inputDescripcion" placeholder="Descripcion Promocion"
							required="true" />
					</div>

				</div>
				<div class="form-group">
					<label for="inputFecha" class="control-label col-xs-5">Fecha</label>
					<div class="col-xs-5">
						<form:input path="fecha" type="text" class="form-control"
							id="inputFecha" placeholder="Fecha Promocioneeeeww"
							required="true" />
					</div>
				</div>


				<div class="form-group">
					<div class="col-xs-offset-5 col-xs-5">
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
				</div>


				<div class="panel panel-deault">
					<div class="panel-header">Articulos Asociados a la promocion
					</div>
					<div class="panel-body">


						<c:forEach var="articulo" items="${promocionCmd.articulos}">
							<div class="col-sm-4 col-lg-4 col-md-4">
								<div class="thumbnail">
									<img
										src="http://www.evr.cl/blog/2010_2013/wp-content/uploads/ChileBio.jpg"
										alt="">
									<div class="caption">
										<h4 class="pull-right">$${articulo.precio}</h4>
										<h4 style="text-transform: capitalize">
											<a href="#">${articulo.nombreArticulo}</a>
										</h4>
									</div>
									<div class="caption">
										<h4 class="pull-right">${fn:substring(articulo.fechaActualizacion,1,10)}</h4>
										<h4>
											<a href="#">Fecha Actualizacion</a>
										</h4>
										<p>${articulo.tipoArticulo.descripcion}
											<a target="_blank" href="http://www.bootsnipp.com">Bootsnipp
												- http://bootsnipp.com</a>.
										</p>
									</div>
									<div class="ratings">
										<p class="pull-right">15 reviews</p>
										<p>
											<span class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>


				</div>


				<div class="panel panel-deault">
					<div class="panel-header">Articulos Disponibles</div>
					<div class="panel-body">

						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="list-group">
								<table id="tabla1" cellpadding='3' cellspacing='2'
									class="table table-filter tableWrap table-striped">
									<c:forEach var="articulo" items="${articulos}">

										<tr>


											<td><div></div>
												<div>

													<form:checkbox path="listaArticulos"
														name="${promocionCmd.listaArticulos}"
														value="${articulo.id.idArticulo}" />
													${articulo.nombreArticulo}

												</div></td>

											<td>
												<div>
													<c:out value="${articulo.tipoArticulo.descripcion} " />
												</div>
												<div>
													<c:out
														value="Fecha Actualizacion ${fn:substring(articulo.fechaActualizacion,1,10)}" />
												</div>
											</td>

											<td><c:out value="$${articulo.precio}" /></td>
											<td><c:out value="${articulo.unidadMedida}" /></td>







										</tr>





									</c:forEach>
								</table>
							</div>
						</div>
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

	<script src="<c:url value='/resources/js/bootstrapValidator.min.js'/>"></script>
	<!-- Validacion -->

	<script>
		$(document)
				.ready(
						function() {
							var fecha = $('#inputFecha').val();
							var fecha= fecha.replace(/-/g,'/');
							    $('#inputFecha').val(fecha.substring(0,10));
							$('#crearPromocionForm')
									.bootstrapValidator(
											{
												framework : 'bootstrap',
												icon : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													'inputDescripcion' : {
														row : '.col-xs-10',
														validators : {
															notEmpty : {
																message : 'Debe ingresar una Descripcion para la Promocion'
															}
														}
													},
													'inputFecha' : {
														row : '.col-xs-10',
														validators : {
															notEmpty : {
																message : 'Debe seleccionar una Fecha'
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
