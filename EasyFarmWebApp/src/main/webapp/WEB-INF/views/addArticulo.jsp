<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

<div class="panel panel-default">
    <div class="panel-body">
        Datos Articulo
    </div>
            <form:form commandName="cargaArticuloCmd" method="POST"  action="addArticulo" class="form-horizontal">
                
            
                        <form:hidden path="idAlmacen" class="form-control" id="idAlmacen" placeholder="Id Almacen"/>
                    
                <div class="form-group">
                    <label for="nombrearticulo" class="control-label col-xs-2">Nombre Articulo</label>
                    <div class="col-xs-10">
                        <form:input path="articulo.nombrearticulo" type="text" class="form-control" id="nombrearticulo" placeholder="Nombre Articulo"/>
                    </div>
                </div>
	
				<div class="form-group">
                    <label for="precio" class="control-label col-xs-2">Precio</label>
                    <div class="col-xs-10">
                        <form:input path="articulo.precio" type="text" class="form-control" id="precio" placeholder="Precio"/>
                    </div>
                </div>


				<div class="form-group">
                    <label for="fechaactualizacion" class="control-label col-xs-2">Fecha Actualizacion</label>
                    <div class="col-xs-10">
                        <form:input path="articulo.fechaactualizacion" type="text" class="form-control" id="fechaactualizacion" placeholder="Fecha Actualizacion"/>
                    </div>
                </div>

				<div class="form-group">
                    <label for="tipoarticulo" class="control-label col-xs-2">Tipo Articulo</label>
                    <div class="col-xs-10">
                        <form:select  path="articulo.tipoarticulo.idtipoarticulo" class="form-control" >
                            <form:option   value="0" label="Elige un Tipo de articulo"/>                            
                            <form:options items="${tiposArticulos.tiposArticulos.tipoArticulo}" itemValue="idtipoarticulo" itemLabel="descripcion"/>
                        </form:select>
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
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
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
