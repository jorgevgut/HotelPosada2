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
  <meta name="layout" content="vista"/>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Hotel Posada</title>

</head>
<body><div class="post">
						<h2 class="title"><a href="#">Cancelación de reservas:</a></h2>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">
                                                  <p>Introduce tu codigo unico para cancelar tu reserva:</p>
                                                  <p>Recuerda que realizar la cancelación de tu reserva dentro del tiempo de compensacion, indicara la necesidad de realizar un pago de compensación.</p>
                                                  <form action="cancela">
                                                    <p>Código único:</p>
                                                    <p><select name="codigo">
                                                      ${opciones}
                                                    </select></p>
                                                    <input type="submit" value="Cancelar"/>
                                                  </form>
                                                  <p>${despliegue}</p>

                                                
						</div>
					</div>

<!-- end #footer -->
</body>
</html>
