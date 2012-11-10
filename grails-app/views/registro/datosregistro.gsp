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
						<h2 class="title"><a href="#">Detalles del registro de cliente</a></h2>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">
                                                  <p>Confirme que la informacion sea correcta, de lo contrario cancele esta operacion</p>

                                                  <p>Reserva con numero<b>${codigo}</b></p>
                                                  <p>Correspondiente al cliente <b>${nombre}</b></p>
                                                   <p>Habitacion asignada:${habitacion}</p>

                                                    <p>Clase <b>${clase}</b></p>
                                                    <p>Tipo <b>${tipo}</b></p>

                                                    <form action="confirmar" onsubmit="return confirm('Aceptando aqui terminara con el registro.¿Desea continuar?')">
                                                      <input type="hidden" name="id_habitacion" value="${habitacion}"/>
                                                      <input type="hidden" name="id_reserva" value="${codigo}"/>
                                                      <input type="submit" value="Finalizar registro"/>
                                                    </form>

						</div>
                                                <g:link controller="registro"><input type="button" value="cancelar registro"/></g:link>

  </div>


</body>
</html>
