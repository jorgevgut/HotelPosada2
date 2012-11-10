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
    <h3>Confirme su cancelación de reserva</h3>
    <p>Su reserva con codigo unico <b>${codigo}</b> esta a punto de ser cancelada</p>
    <g:if test="${!penalizar}">
      <p>Usted esta a tiempo de cancelar su reserva sin ninguna penalizacion.</p>
      <p>No se generaran deudas ni se ejecutaran cargos por cancelar esta reserva.</p>
      <p>Para cancelar confirme:</p>
      <form action ="reservacancelada" onsubmit="return confirm('¿Esta seguro que desea cancelar esta reserva?')">
        <input type="hidden" name="codigo" value="${codigo}"/>

        <input type="submit" value="Confirmar cancelacion de reserva"/>
      </form>
    </g:if>
    <g:if test="${penalizar}">
      <h3>¡Atencion!</h3>
      <p>Ha caducado el tiempo de cancelacion de esta reserva</p>
      <p>Si usted desea continuar con esta operacion, se realizara un cargo por penalizacion</p>
      <p>El cargo para esta reserva aplica una penalizacion del ${penalizacion}% del costo total de su reserva</p>
      <p><b>Cantidad total a pagar:${coste}</b></p>

      <p>Si desea continuar confirme la cancelacion</p>

      <p>
        <form action="reservacancelada" onsubmit="return confirm('¿Esta seguro que desea cancelar esta reserva?')">
          <input type="hidden" name="codigo" value="${codigo}"/>
          <input type="hidden" name="penalizacion" value="${coste}"/>
        <input type="submit" value="Confirmar cancelacion de reserva"/>
        </form></p>
    </g:if>

  </div>


</body>
</html>
