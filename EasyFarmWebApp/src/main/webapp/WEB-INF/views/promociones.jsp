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
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
	<!-- Page Content -->
	<div class="container">


		<div class="row">

			



				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bell fa-fw"></i> Promociones disponibles
							<!-- Button trigger modal -->
							
									
									<a data-toggle="modal" class="btn btn-primary btn-sm  pull-right" href="addPromocion" data-target="#myModal">Agregar</a>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="list-group">
							<table id="tabla1" cellpadding='3' cellspacing='2'
								class="table table-filter tableWrap table-striped">


								<!--Falta Agregar campo codigo inscripcion-->
								<tr>
									<th>Promocion</th>
									<th>Fecha</th>
									<th>Eliminar</th>
									<th>Editar</th>
									<th></th>

								</tr>
								<c:if test="${listadoPromociones.size() <= 0}">
									<tr>
										<td colspan="5">0 Promociones</td>
									</tr>
								</c:if>
								<c:forEach items="${listadoPromociones}" var="promocion">
									<tr>

										<td>
											<div
												<c:choose>
                                        <c:when test="${promocion.descripcion == 'HOCKEY'}">class="deportes_sprite2 hockey"
                                        </c:when>                                     
                                        <c:when test="${promocion.descripcion == 'TENIS'}">class="deportes_sprite2 tenis"
                                        </c:when> 
                                        <c:otherwise>
										<class="deportes_sprite2 tenis" 
                                        </c:otherwise>
                                    </c:choose>>

											</div>
											<div>
												<c:out value="${promocion.descripcion}" />
											</div>
										</td>


										<td>
										
											<div>
												<c:out value="Fecha ${fn:substring(promocion.fecha,0,10)}" />
											</div>
										</td>



										<td><a onclick="return confirm('esta seguro?')"
											href="<c:url value="/inscripciones/eliminarInscripcion.do?idInscripcion=${articulo.id.idArticulo}" />">eliminar</a></td>
										<td>
										
										<a data-toggle="modal" class="btn btn-primary btn-sm  pull-right" href="<c:url value="verPromocion?idPromocion=${promocion.id.idPromocion}" />" data-target="#myModal">Editar</a>
										</td>																					
									</tr>
								</c:forEach>

							</table>
						</div>

					</div>
					<!-- /.list-group -->					
				</div>
				<!-- /.panel-body -->
			</div>


		</div>






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
	$('body').on('hidden.bs.modal', '.modal', function () {
		  $(this).removeData('bs.modal');
		});
	
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
