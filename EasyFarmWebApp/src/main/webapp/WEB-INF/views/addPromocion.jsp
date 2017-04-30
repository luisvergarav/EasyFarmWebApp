<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<div class="panel panel-default">
    <div class="panel-body">
        Datos Promocion
    </div>
            <form:form id="crearPromocionForm" commandName="promocionCmd" method="POST"  action="addPromocion" class="form-horizontal" >
                
                <div class="form-group">
                    <label for="inputDescripcion" class="control-label col-xs-5">Descripcion</label>
                    <div class="col-xs-5">
                        <form:input path="descripcion" class="form-control" id="inputDescripcion" placeholder="Descripcion Promocion" required="true"/>
                    </div>
            
                </div>
                <div class="form-group">
                    <label for="inputFecha" class="control-label col-xs-5">Fecha</label>
                    <div class="col-xs-5">
                        <form:input path="fecha" type="text" class="form-control" id="inputFecha" placeholder="Fecha Promocion" required="true"/>
                    </div>
                </div>

				
				<div class="form-group">
                    <div class="col-xs-offset-5 col-xs-10">
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </div>
                </div>
            
                


	<div class="panel panel-deault">
    	<div class="panel-body">
        Articulos
    	</div>

           
		</div>
		</form:form>           
    </div>            

  