<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value='/resources/css/shop-homepage.css'/>" rel="stylesheet">

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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Start Bootstrap</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3" >	
                <p class="lead">Ubicacion</p>
                <p class="lead">${almacen.ubicacion.calle} ${almacen.ubicacion.numerocalle}</p>
                
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
<input value="${almacen.ubicacion.calle} ${almacen.ubicacion.numerocalle}" id="direccionAlmacen" hidden="true">			
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		
		<div class="col-md-9">
		
			${almacen.nombrealmacen}
			
			<ul class="nav nav-tabs" id="mytab">
			<c:forEach var="tipoArticulo" items="${tiposArticulo}" varStatus="loop">
			  <li class="${loop.index eq 1?'active':''}">
			    <a data-toggle="tab"  href="#<c:out value='${tipoArticulo.descripcion}'/>">${tipoArticulo.descripcion}
			    
			    </a>
			  </li>  
			 </c:forEach> 
			</ul>



				<div class="tab-content">
					<c:forEach var="tipoArticulo" items="${tiposArticulo}" varStatus="loop">
							<div id="<c:out value='${tipoArticulo.descripcion}'/>" 
							class="tab-pane fade in ${loop.index eq 1?'active':''}">
				
				                <div class="row">
				                <c:forEach var="articulo" items="${almacen.articulos}">
								<c:if test="${articulo.tipoarticulo.descripcion eq tipoArticulo.descripcion}">
				                    <div class="col-sm-4 col-lg-4 col-md-4">
				                        <div class="thumbnail">
				                            <img src="http://placehold.it/320x150" alt="">
				                            <div class="caption">
				                                <h4 class="pull-right">$${articulo.precio}</h4>
				                                <h4><a href="#">${articulo.nombrearticulo}</a>
				                                </h4>                                
				                            </div>
				                            <div class="caption">
				                                <h4 class="pull-right">${fn:substring(articulo.fechaactualizacion,1,10)}</h4>
				                                <h4><a href="#">Fecha Actualizacion</a>
				                                </h4>
				                                <p>${articulo.tipoarticulo.descripcion} <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
				                            </div>
				                            <div class="ratings">
				                                <p class="pull-right">15 reviews</p>
				                                <p>
				                                    <span class="glyphicon glyphicon-star"></span>
				                                    <span class="glyphicon glyphicon-star"></span>
				                                    <span class="glyphicon glyphicon-star"></span>
				                                    <span class="glyphicon glyphicon-star"></span>
				                                    <span class="glyphicon glyphicon-star"></span>
				                                </p>
				                            </div>
				                        </div>
				                    </div>
								</c:if>
				                </c:forEach>
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
        var divMap =document.getElementById('map');
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: {lat: -34.397, lng: 150.644}
        });
        var geocoder = new google.maps.Geocoder();

        
          geocodeAddress(geocoder, map);
        
      }

      function geocodeAddress(geocoder, resultsMap) {
      
	 	//direccion entrada 
       var address = document.getElementById('direccionAlmacen').value;
       //var address = 'las salitreras 8010';
        geocoder.geocode({'address': address}, function(results, status) {
          if (status === google.maps.GeocoderStatus.OK) {
            resultsMap.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
              map: resultsMap,
              position: results[0].geometry.location
            });
          } else {
            alert('Geocode was not successful for the following reason: ' + status);
          }
        });
      }
    </script>
  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcN_ZKmKLGJ35AwXhfI4V9T87Gv9GQZkI&signed_in=true&callback=initMap">
    </script>
</body>

</html>
