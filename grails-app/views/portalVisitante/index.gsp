<html>
    <head>
        <title>Hotel Posada</title>
        <meta name="layout" content="main" />
        <style type="text/css" media="screen">

        #nav {
            margin-top:20px;
            margin-left:30px;
            width:228px;
            float:left;

        }
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(images/leftnav_midstretch.png) repeat-y top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(images/leftnav_btm.png) no-repeat top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(images/leftnav_top.png) no-repeat top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        #pageBody {
            margin-left:280px;
            margin-right:20px;
        }
        </style>
    </head>
    <body>

        <div id="pageBody">
            <h1>Hotel Posada:</h1>
            <p>Sistema de gestión de reservas del Hotel Posada, acceda a las diferentes funciones del Hotel:</p>
            <p>Usted Ha ingresado como usuario registrado</p>
            <div id="controllerList" class="dialog">
                <h2>Por favor, elija una de las opciones disponibles:</h2>
                <ul>
                  <li><g:link controller="consulta">Realizar Consulta basica</g:link></li>
                  <li><g:link controller="portalVisitante" action="registro">Registrarse</g:link></li>
                <li><g:link controller="login" action="">Login</g:link></li>
                </ul>
            </div>
        </div>
    </body>
</html>
