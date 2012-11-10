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
<body>

					<div class="post">
						<h2 class="title"><a href="#">Gracias reservar en Hotel Posada</a></h2>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">

                                                  <h2>Datos de su reserva</h2>
                                                  <p>Esta informacion es muy importante por favor conservela para futuras referencias.</p>
                                                  <p>Este es tu codigo unico de reserva, usalo para consultar o modificar tu reserva:</p>
                                                  <p>Codigo:${codigo}</p>
                                                  <p>Nombre:${nombre}</p>
                                                  <p>Fecha inicial:${f_inicial}</p>
                                                  <p>Fecha final:${f_final}</p>
                                                  <p>Tipo de habitacion:${habitacion}</p>
                                                  <p>Incluye cama infantil:${infantil}</p>
                                                  <p>Costo por alojamiento:${importeTotal}</p>
                                                  <input id="importeJS"type="hidden" value="${importeTotal}"/>
                                                  <br/>
                                                  <h3>Imprima esta pagina, para hacerlo puede descargar la version en PDF</h3>
                                                  <p>
                                                    <g:pdfForm action="" url="/reservar/pdf" filename="sureserva.pdf">
                                                      <input type="hidden" name="codigo" value="${codigo}"/>
                                                      <input type="hidden" name="nombre" value="${nombre}"/>
                                                      <input type="hidden" name="f_i" value="${f_inicial}"/>
                                                      <input type="hidden" name="f_f" value="${f_final}"/>
                                                      <input type="hidden" name="habitacion" value="${habitacion}"/>
                                                      <input type="hidden" name="infantil" value="${infantil}"/>
                                                      <input type="hidden" name="importeTotal" value="${importeTotal}"/>
                                                      <input type="submit" value="Generar mi PDF"/>
                                                    
                                                    </g:pdfForm>
                                                  </p>



						</div>
					</div>

</body>
</html>
