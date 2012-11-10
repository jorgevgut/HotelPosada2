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
						<h2 class="title"><a href="#">Asigne una habitacion al cliente:</a></h2>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">
                                                  <p>Asigne una habitacion al cliente:</p>
                                                  <p>Las habitaciones a elegir son correspondientes con el tipo de reserva del cliente.</p>

                                                  <h3>Registrar reserva con numero: <b>${codigo}</b></h3>
                                                  <form action="datosregistro" onsubmit=" return confirm('Esta a punto de realizar un registro:¿Desea continuar?')">
                                                    <p>Seleccione habitacion:
                                                    <select name="id_habitacion">
                                                      ${habitaciones}
                                                    </select></p>
                                                    <p>Habitacion de clase <b>${clase}</b></p>
                                                    <p>Esta habitacion es <b>${tipo}</b></p>
                                                    <input type="hidden" name="codigo" value="${codigo}"/>
                                                    <input type="hidden" name="clase" value="${clase}"/>
                                                    <input type="hidden" name="tipo" value="${tipo}"/>
                                                    <input type="submit" value="Registrar llegada del cliente"/>
                                                  </form>

                                                 
						</div>
                                                <g:link controller="registro"><input type="button" value="cancelar registro"/></g:link>

  </div>


</body>
</html>
