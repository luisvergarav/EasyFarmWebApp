<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">


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
	