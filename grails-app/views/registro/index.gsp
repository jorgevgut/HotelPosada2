<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Sparkling
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20100529

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="layout" content="vista" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Hotel Posada</title>
</head>
<body>		<div class="post">
						<h2 class="title"><a href="#">Registro de clientes:</a></h2>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">
                                                  <p>Utilice esta forma para registrar a un cliente que llega al hotel y asignarle una habitacion.</p>
                                                  <p>Seleccione el codigo de reserva del cliente:</p>
                                                  <form action="registrar">
                                                    <p>Codigo de reserva:</p>
                                                    <select name="codigo">
                                                      ${opciones}
                                                    </select>
                                                    <p>Nota: solo pueden elegirse codigos correspondientes a reservas que inician el dia de hoy</p>

                                                    <g:if test="${opciones=='<option>No hay reservas para registrar</option>'}">
                                                      <g:link controller="portal"><input type="button" value="Regresar"/></g:link>
                                                    </g:if>
<g:else>
     <input type="submit" value="Registrar llegada del cliente"/>
</g:else>
                                                    
                                                  </form>

                                                  <h3>Reservas con registro valido desde el dia de hoy:</h3>
                                                  <table>
                    <thead>

                        <tr>



                            <auth:ifLoggedIn>
                            <g:sortableColumn property="nombre" title="${message(code: 'reservas.nombre.label', default: 'Nombre')}" />
                            </auth:ifLoggedIn>
                            <g:sortableColumn property="id_reserva" title="${message(code: 'reservas.id_reserva.label', default: 'Idreserva')}" />

                            <g:sortableColumn property="f_inicio" title="${message(code: 'reservas.f_inicio.label', default: 'Inicio')}" />


                            <g:sortableColumn property="f_final" title="${message(code: 'reservas.f_final.label', default: 'Termino')}" />



                            <g:sortableColumn property="msg" title="${message(code: 'reservas.msg.label', default: 'Categoria')}" />
                            <g:sortableColumn property="habitacion" title="${message(code: 'reservas.habitacion.label', default: 'habitacion')}" />
                            <g:sortableColumn property="infantil" title="${message(code: 'reservas.infantil.label', default: 'infantil')}" />

                            <g:sortableColumn property="alojamiento" title="${message(code: 'reservas.alojamiento.label', default: 'Precio')}" />

                        </tr>
                    </thead>
                    <tbody>

                    <g:each in="${reservasInstanceList}" status="i" var="reservasInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">



                            <auth:ifLoggedIn>
                              <td>${fieldValue(bean: reservasInstance, field: "nombre")}</td>
                            </auth:ifLoggedIn>

                            <td>${fieldValue(bean: reservasInstance, field: "id_reserva")}</td>

                            <td><g:formatDate format="yyyy-MM-dd" date="${reservasInstance.f_inicio}"/></td>

                            <td><g:formatDate format="yyyy-MM-dd" date="${reservasInstance.f_final}" /></td>


                            <td>${fieldValue(bean: reservasInstance, field: "msg")}</td>
                             <td>${fieldValue(bean: reservasInstance, field: "habitacion")}</td>

                            <td>${fieldValue(bean: reservasInstance, field: "infantil")}</td>
                            <td>${fieldValue(bean: reservasInstance, field: "alojamiento")}</td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>


						</div>

  </div>


</body>
</html>
