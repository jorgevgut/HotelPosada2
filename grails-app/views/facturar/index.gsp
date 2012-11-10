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
						<h2 class="title"><a href="#">Iniciar checkout y facturar:</a></h2>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">
                                                  <p>Nota: solo aquellas reservas ya establecidas y registradas en el hotel podran ser elegibles para realizar checkout y facturacion.</p>
                                                  <form action="sumar">
                                                    <p>Listado de reservas elegibles para checkout y facturacion:</p>
                                                    <p>Codigo unico:</p><select name="codigo">
                                                      ${opciones}
                                                    </select>
                                                    <input type="submit" value="Continuar"/>
                                                  </form>
                                                  <p>Código de reserva: ${codigo}</p>
                                                  <p>Importe actual: ${importe}</p>


						</div>
					</div>
</body>
</html>