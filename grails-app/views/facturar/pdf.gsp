<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>PDF</title>
  </head>
  <body>
    <div class="post">
    <h1>HOTEL POSADA</h1>
    <h2>FACTURA</h2>
    <h3>Numero de reserva:${codigo}</h3>
    <p>Esta informacion es muy importante por favor conservela para futuras referencias.</p>


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
                                                  </div>
  </body>
</html>
