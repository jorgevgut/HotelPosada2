<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <title><g:layoutTitle default="Hotel Posada" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'hp.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <g:javascript src="miscript.js" />
        <g:javascript library="jquery"/>
       <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
       <script trype="text/javscript">

       </script>

    </head>
<body onload="s()">


  <div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1><a href="#"><span>Hotel</span>Posada  </a></h1>
				<p>hotel resort 5 estrellas</p>
			</div>
			<div id="menu">
				<ul>
					<li class="current_page_item"><a href="#">Inicio</a></li>
                                        <auth:ifLoggedIn><li><a href="/HotelPosada/portal">Portal</a></li></auth:ifLoggedIn>
                                        <auth:ifNotLoggedIn><li><a href="/HotelPosada/portalVisitante">Portal</a></li></auth:ifNotLoggedIn>
					
				</ul>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
        <div id="spinner" class="spinner" style="display:none;">
          <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
                    </div>
        <g:layoutBody />
        </div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li>
							
							<div style="clear: both;">&nbsp;</div>
						</li>
						<li>
							<h2>Hotel Posada</h2>
							<p>Encuentra las habitaciones mas comodoas, modernas y comfortables solo aqui en el hotel posada.</p>
						</li>
						<li>
							<h2>Opciones disponibles</h2>
                                                        
                                                        <auth:ifNotLoggedIn><p>
                                                            Recuerde que ha accesado como usuario invitado.</p>
                                                          <p>Sus opciones pueden estar limitadas</p>
                                                        </auth:ifNotLoggedIn>

							<ul>

                                                          <auth:ifNotLoggedIn>
                                                            <li><g:link controller="consulta">Realizar Consulta basica</g:link></li>
                  <li><g:link controller="portalVisitante" action="registro">Registrarse</g:link></li>
                                                          <li><g:link controller="login">Login</g:link></li>
                                                          </auth:ifNotLoggedIn>
                                                          <auth:ifLoggedIn>
                                                          <li class="controller">
                                                          <g:link controller="consulta">
                                                            Realizar Consultas
                                                          </g:link>
                                                        </li>
                                                        <li class="controller">
                                                          <g:link controller="reservar">
                                                            Realizar Reservas
                                                          </g:link>
                                                        </li>
                                                        <li class="controller">
                                                          <g:link controller="cancelar">
                                                            Cancelar una reserva
                                                          </g:link>
                                                        </li>
                                                        <li class="controller">
                                                          <g:link controller="registro">
                                                            Registrar Cliente/Checkin de cliente
                                                          </g:link>
                                                        </li>
                                                        <li class="controller">
                                                          <g:link controller="facturar">
                                                            Facturacion y salida/Checkout de cliente
                                                          </g:link>
                                                        </li>
                                                        <li class="controller">
                                                          <g:link controller="portal">
                                                            Regresar a portal
                                                          </g:link>
                                                        </li>

                                                        <li><h3>Opciones de Usuario</h3>
                                                        <p>usuario identificado como:<auth:user/> </p>
                                                        <ul>
                                                          <g:if test="${auth.user() ==hotelposada.Users.get(1).login}">
                                                            <li><g:link controller="admin">Panel de Administracion</g:link></li>
                                                          </g:if>
                                                          <li><auth:logoutLink success="[controller:'login']"
    error="[controller:'login']">Log out/salir</auth:logoutLink>
                                                        </li>
                                                        </ul>
                                                        </li>
                                                          </auth:ifLoggedIn>


							</ul>
						</li>

					</ul>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p>Copyright (c) 2011 HotelPosada.com - <a rel="license" href="http://creativecommons.org/licenses/by/2.5/es/"><img alt="Licencia de Creative Commons" style="border-width:0" src="http://i.creativecommons.org/l/by/2.5/es/88x31.png" /></a><br />Este obra está bajo una <a rel="license" href="http://creativecommons.org/licenses/by/2.5/es/">licencia de Creative Commons Reconocimiento 2.5 España</a>.</p>
</div>
    </body>

</html>
