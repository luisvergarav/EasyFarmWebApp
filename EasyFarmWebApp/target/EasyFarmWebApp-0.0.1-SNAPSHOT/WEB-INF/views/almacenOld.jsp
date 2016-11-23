<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"


    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<title>Insert title here</title>




</head>
<body>
<div class="container">
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


class="tab-pane fade in ${loop.index eq 1?'active':''}"

>
<div class="row">
		<c:forEach var="articulo" items="${almacen.articulos}">
			<c:if test="${articulo.tipoarticulo.descripcion eq tipoArticulo.descripcion}">
  				<div class="col-sm-6 col-md-4">
    			<div class="thumbnail">
      				<img src="..." alt="...">
      				<div class="caption">
      					$${articulo.precio} -  	${articulo.fechaactualizacion}      	      
      				</div>
      				<div class="caption">
        			<h3>${articulo.nombrearticulo}</h3>
        			<p>${articulo.tipoarticulo.descripcion} </p>
        			<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
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
 <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
    <script type="text/javascript">

</script>
</body>

</html>