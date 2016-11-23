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
<style type="text/css">
html, body { height: 100%; width: 100%; margin: 0; }

</style>
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
    
  <div class="panel panel-default">
  <div class="panel-body">
    
    
              <p class="lead">Ubicacion</p>
                <p class="lead">${almacen.ubicacion.calle} ${almacen.ubicacion.numerocalle}</p>
                
                <div class="list-group" id="map" style="height:500px">
      
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
    var almacenes = ${listaAlmacenesJson}; 
    var keyArr = Object.keys(almacenes);
    var listaAlmacenes = new Array();
    var divMap;
    var latitud = 0;
    var longitud = 0;
    var bounds;
    
    
    for( var i=0; i<keyArr.length; i++ ) {
  	listaAlmacenes[i] = new Array(2);
	}

    for ( var i = 0; i < keyArr.length; i++) {
    
    
    		var val = almacenes[keyArr[i]];
            
            texto= keyArr[i];
            
            var keyArr1 = Object.keys(val);
            direccionValue = val[keyArr1[1]];
            idValue =  val[keyArr1[0]];
            
            listaAlmacenes[i][0]=direccionValue;
            listaAlmacenes[i][1]=idValue;
    }
    
      function initMap() {
      
      	
        divMap =document.getElementById('map');
        bounds = new google.maps.LatLngBounds();
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: {lat: -28.643387, lng: 153.612224,
           mapTypeId: google.maps.MapTypeId.ROADMAP
          }
        });
        var geocoder = new google.maps.Geocoder();

        for (var i = 0; i < listaAlmacenes.length; i++) {
          geocodeAddress(geocoder, map,listaAlmacenes[i]);
          }
          navigator.geolocation.getCurrentPosition(function (position) {
      var initialLocation = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);
      this.latitud = position.coords.latitude;
      this.longitud = position.coords.longitude;
      map.setCenter(initialLocation);
      //divMap.panTo(initialLocation);
    });
          
          
    
      }
      

      function geocodeAddress(geocoder, resultsMap,almacen) {
      
	 	//direccion entrada 
       //var address = document.getElementById('direccionAlmacen').value;
       //var address = 'las salitreras 8010';
       var url_base = document.location.toString();
         
	        geocoder.geocode({'address': almacen[0]}, function(results, status) {
	          if (status === google.maps.GeocoderStatus.OK) {
	             var marker = new google.maps.Marker({
		          icon: 'http://maps.google.com/mapfiles/ms/icons/blue.png',
		          map: resultsMap,
		          position: results[0].geometry.location,
		          title: almacen[0],
		          animation: google.maps.Animation.DROP,
		          address: almacen[0],
		          url: url_base.substring(0,url_base.lastIndexOf("/")+1) + 'almacen?idAlmacen=' +almacen[1]
		        })
		        infoWindow(marker, resultsMap, almacen[0], almacen[0], almacen[1]);
		        //bounds.extend(marker.getPosition());
		        
	          } else {
	            alert('Geocode was not successful for the following reason: ' + status);
	          }
	        });
	   
      }
      
     
      
      function infoWindow(marker, map, title, address, url) {
 	 google.maps.event.addListener(marker, 'click', function() {
    var html = "<div><h3>" + marker.title + "</h3><p>" + marker.address + "<br></div><a href='" + marker.url + "'>View location</a></p></div>";
    iw = new google.maps.InfoWindow({
      content: html,
      maxWidth: 350
    });
    iw.open(map, marker);
  });
}
    </script>
  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcN_ZKmKLGJ35AwXhfI4V9T87Gv9GQZkI&signed_in=true&callback=initMap">
    </script>
</body>

</html>
