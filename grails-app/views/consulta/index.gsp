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
<meta name="description" content="" />
<meta name="layout" content="vista" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Hotel Posada</title>

</head>
<body>
				<div class="post">
                                  <div class="nav">
          <ul>
            <li><g:link controller="consulta" action="index">Consulta de reservas</g:link></li>
          <auth:ifLoggedIn><li><g:link controller="habitaciones" action="list">Consulta de Habitaciones</g:link></li></auth:ifLoggedIn>
          </ul>
        </div>
						<h3><a href="#">Consulta de reservas </a></h3>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">
                                                  <h3>Consulta por codigo</h3>
                                                  <p>Introduce tu codigo unico para consultar el estado de tu reserva:</p>
                                                  <form action="consulta">
                                                    <p>Codigo unico:</p><input type="text" name="codigo" size="5"/>
                                                    <input type="submit" value="Consultar"/>
                                                  </form>
                                                  <h3>Consulta por nombre</h3>
                                                  <p>Introduce el nombre del usuario para verificar reserva:</p>
                                                  <form action="index">
                                                    <p>Nombre:</p><input type="text" name="nombre" size="5"/>
                                                    <input type="submit" value="Consultar"/>
                                                  </form>
                                                  <form action ="consultaTodo">
                                                    <p>Presiona este boton para ver todas las reservas disponibles</p>
                                                    <input type="submit" value="Consultar"/>
                                                  </form>

                                                  <!--LISTA TABLA-->
                                                  <table>
                    <thead>
                        <tr>

                            <g:sortableColumn property="id" title="${message(code: 'reservas.id.label', default: 'Id')}" />

                            <auth:ifLoggedIn>
                            <g:sortableColumn property="nombre" title="${message(code: 'reservas.nombre.label', default: 'Nombre')}" />
                            </auth:ifLoggedIn>
                            <g:sortableColumn property="id_reserva" title="${message(code: 'reservas.id_reserva.label', default: 'Idreserva')}" />

                            <g:sortableColumn property="f_inicio" title="${message(code: 'reservas.f_inicio.label', default: 'Finicio')}" />


                            <g:sortableColumn property="f_final" title="${message(code: 'reservas.f_final.label', default: 'Ffinal')}" />



                            <g:sortableColumn property="id_habitacion" title="${message(code: 'reservas.id_habitacion.label', default: 'Idhabitacion')}" />


                            <g:sortableColumn property="msg" title="${message(code: 'reservas.msg.label', default: 'Msg')}" />

                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${reservasInstanceList}" status="i" var="reservasInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td> ${reservasInstance.id}</td>

                            <auth:ifLoggedIn>
                            <td>${fieldValue(bean: reservasInstance, field: "nombre")}</td>
                            </auth:ifLoggedIn>

                            <td>${fieldValue(bean: reservasInstance, field: "id_reserva")}</td>

                            <td><g:formatDate format="yyyy-MM-dd" date="${reservasInstance.f_inicio}"/></td>

                            <td><g:formatDate format="yyyy-MM-dd" date="${reservasInstance.f_final}" /></td>

                            <td>${fieldValue(bean: reservasInstance, field: "id_habitacion")}</td>

                            <td>${fieldValue(bean: reservasInstance, field: "msg")}</td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
						</div>
					</div>
</body>
</html>
