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

            <div class="col-md-3" >	
                <p class="lead">Ubicacion</p>
                <p class="lead">${almacen.ubicacion.calle} ${almacen.ubicacion.numeroCalle}</p>
                
                <div class="list-group" id="map" style="height: 200px;width: 300px">
                    

                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
			</div>	
</div>
</div>			
	<!-- Cuerpo -->
	<input
		value="${almacen.ubicacion.calle} ${almacen.ubicacion.numeroCalle} ${almacen.ubicacion.comuna} ${almacen.ubicacion.region} Chile"
		id="direccionAlmacen" hidden="true">
	<div class="container">
		<div class="row">


			<div class="col-md-3"></div>

			<div class="col-md-9">

				<h2 style="text-transform: capitalize" class="">${almacen.nombreAlmacen}</h2>

				<div class="row">
					<c:forEach var="promocion" items="${almacen.promocions}">
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img
									src="http://www.evr.cl/blog/2010_2013/wp-content/uploads/ChileBio.jpg"
									alt="">
								<div class="caption">
									<h4 class="pull-right"></h4>

									<h4 style="text-transform: capitalize">
										<a
											href="<c:url value="verPromocion?idPromocion=${promocion.id.idPromocion}" />">${promocion.descripcion}</a>
									</h4>
								</div>
								<div class="caption">
									<h4 class="pull-right">${fn:substring(promocion.fecha,0,10)}</h4>
									<h4>
										<a href="#">-</a>
									</h4>
									<p>
										See more snippets like this online store item at <a
											target="_blank" href="http://www.bootsnipp.com">Bootsnipp
											- http://bootsnipp.com</a>.
									</p>
								</div>
								<%
									if (request.isUserInRole("ROLE_USER")) {
								%>
								<!-- Button trigger modal -->
								<button type="button" id="btnMapa"
									class="btn btn-primary btn-lg" data-toggle="modal"
									data-target="#myModal">Eliminar</button>
								<%
									}
								%>
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
