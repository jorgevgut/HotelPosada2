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
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Hotel Posada</title>
</head>
<body>
					<div class="post">
						<h3><a href="#">Confirmacion de checkout para reserva ${codigo}:</a></h3>
						<div style="clear: both;">&nbsp;</div>
						
                                                  <p>Revise que los datos sean correctos, de ser asi, seleccione Realizar checkout para
                                                  terminar con la operacion e imprimir su factura.</p>
                                                  <p>La factura quedara almacenada en la base de datos donde podra consultarla mas adelante.</p>

                                                    <input type="hidden" name="codigo" value="${codigo}"/>
                                                    <p><input type="hidden" name="importe" size="5" value="0" /></p>
                                                    <p><h3>Consumibles</h3></p>
                                                    <table>
                                                      <tr><td>Tercio Cerveza:</td><td>${coste_cerveza}</td>
                                                    </tr>
                                                    <tr><td>Agua:</td><td>${coste_agua}</td>
                                                    </tr>
                                                    <tr><td>Refrescos:</td><td>${coste_refresco}</td>
                                                    </tr>
                                                    <tr><td>Vino:</td><td>${coste_vino}</td></tr>
                                                    <tr><td>Bebidas Alcoholicas</td><td>${coste_alcohol}</td></tr>
                                                    <tr><td>Llamadas telefonicas:</td><td>${coste_minutos}</td></tr>
                                                    </table>

                                                  <p>Código de reserva: ${codigo}</p>
                                                  <p>Nombre del Cliente: ${nombre}</p>
                                                  <p><b>Total:</b></p>
                                                  <p>Coste total consumibles: ${importe}</p>
                                                  <p>Coste por alojamiento: ${importeTotal-importe}</p>
                                                  <p>Coste total(incluye costo por habitacion): ${importeTotal}</p>
                                                  
                                                  <g:link controller="facturar">  <input type="button" value="Regresar"/>
                                                  </g:link>
                                                  <g:pdfForm action="" url="/facturar/pdf" filename="factura.pdf">
                                                    <input type="hidden" name="codigo" value="${codigo}"/>
                                                    <input type="hidden" name="consumibles" value="${importe}" />
                                                    <input type="hidden" name="alojamiento" value="${importeTotal-importe}" />
                                                    <input type="hidden" name="importeTotal" value="${importeTotal}" />

                                                    <input type="hidden" name="nombre" value="${nombre}" />
                                                    <input type="hidden" name="coste_cerveza" value="${coste_cerveza}" />
                                                    <input type="hidden" name="coste_agua" value="${coste_agua}" />
                                                    <input type="hidden" name="coste_alcohol" value="${coste_alcohol}" />
                                                    <input type="hidden" name="coste_minutos" value="${coste_minutos}" />
                                                    <input type="hidden" name="coste_refresco" value="${coste_refesco}" />
                                                    <input type="hidden" name="coste_vino" value="${coste_vino}" />
                                                    <input type="submit" value="Imprimir pdf"/>
                                                  </g:pdfForm>
					</div>


<!-- end #footer -->
</body>
</html>
