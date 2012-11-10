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
						<h2 class="title"><a href="#">Cargos adicionales a reserva ${codigo}:</a></h2>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">
                                                  <p>En caso de no haber cargos adicionales simplemente presione el boton"continuar con checkout"</p>
                                                  <form action="confirmar" onsubmit="return confirm('¿Esta seguro que desea realizar finalizar el checkout?')">
                                                    <input type="hidden" name="codigo"value="${codigo}"/>
                                                    <input type="submit" value="Continuar con checkout"/>
                                                  </form>
                                                  <form action="confirmar" onsubmit="return confirm('¿Esta seguro que desea realizar finalizar el checkout?')">
                                                    <input type="hidden" name="codigo" value="${codigo}"/>
                                                    <p><input type="hidden" name="importe" size="5" value="0" /></p>
                                                    <p><h3>Consumibles</h3></p>
                                                    <table>
                                                      <tr><td>Tercio Cerveza:</td><td><select name="cerv">
                                                        <option value="0">0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                      </select>
                                                      (7 Euros)</td>
                                                    </tr>
                                                    <tr><td>Agua:</td><td>
                                                      <select name="agua">
                                                        <option value="0">0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                      </select>
                                                    (4 Euros)</td>
                                                    </tr>
                                                    <tr><td>Refrescos:</td><td>
                                                      <select name="refresco">
                                                        <option value="0">0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                      </select>
                                                    (5 Euros)</td>
                                                    </tr>
                                                    <tr><td>Vino:</td><td>
                                                    <select name="vino">
                                                        <option value="0">0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                      </select>
                                                    (15 Euros)</td></tr>
                                                    <tr><td>Bebidas Alcoholicas</td><td>
                                                    <select name="alcohol">
                                                        <option value="0">0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                      </select> (10 Euros)</td></tr>
                                                    <tr><td>Llamadas telefonicas:</td><td><input type="text"  name="minutos"/></td>
                                                      <td>.min(1 E/min)</td></tr>
                                                    </table>
                                                    <input type="submit" value="Finalizar con cargos adicionales"/>
                                                  </form>
                                                  <p>Código de reserva: ${codigo}</p>
                                                  <p>Coste adicional: ${importe}</p>
                                                  <p>Coste total(incluye costo por habitacion): ${importeTotal}</p>
                                                  
                                                  <g:link controller="reservar" action="index"><input type="button" value="cancelar"/></g:link>
                                                </div>
					</div>


<!-- end #footer -->
</body>
</html>
