<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>


<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GroceryStoreService Web App</title>

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
                <a class="navbar-brand" href="#">GroceryStoreService</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
            <div class="dropdown" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Promociones</a>
                        <ul class="dropdown-menu" role="menu">

                                <li role="presentation"><a class="menuajax" href="addPromocion">Agregar</a></li>
                                

                            </ul>
                    </li>
					<li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Articulos</a>
                        <ul class="dropdown-menu" role="menu">

                                <li role="presentation"><a class="menuajax" href="addArticulo">Agregar</a></li>
                                

                            </ul>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                    <li>
                    <a href="<c:url value="/j_spring_security_logout" />" > Logout</a>
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

            <div class="col-md-3" style="padding-left: 40px" >
            
        
            
        
         <%
                List<String> errores = request.getAttribute("errores") != null ? (List<String>) request.getAttribute("errores") : new ArrayList<String>();
                if (errores.size() > 0) {

                    for (String s : errores) {
            %>  
            <div class="alert alert-error">  
                <a class="close" data-dismiss="alert">×</a>  
                <strong><%=s%></strong>
            </div>  
            <%
                    }
                }
            %>     
     
        </div>
        
    
            </div>
         </div>




    <!-- /.container -->

    <!-- jQuery -->
    <script src="<c:url value='/resources/js/jquery.js'/>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>


<!-- Google api staff -->
   

</body>

</html>






