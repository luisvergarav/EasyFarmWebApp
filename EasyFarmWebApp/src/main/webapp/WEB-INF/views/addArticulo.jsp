<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

	<!-- Page Content -->
	

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
