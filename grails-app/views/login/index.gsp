<html>
    <head>
     
        <title>Hotel Posada</title>
        <meta name="layout" content="main" />
        <g:javascript library="jquery" plugin="jquery"/>
        <script type="text/javascript">
         
            function fade(){
            $("#pageBody").fadeOut("slow");}
          
        </script>
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
            <auth:ifLoggedIn>
              <p>Usted ha sido identificado como <h3><auth:user/></h3></p>

              <p>Acceder al portal de usuarios registrados </p>
              <g:link controller="portal"><input type="button" value="Entrar al sistema"/></g:link>
              <p>Cerrar su sesión:<auth:logoutLink success="[controller:'login']"
    error="[controller:'login']">Log out/salir</auth:logoutLink></p>
            </auth:ifLoggedIn>
            <auth:ifNotLoggedIn>
            <p>Usted puede acceder a este sistema en calidad de vistante, usuaro registrado o administrador.</p>

            <h2>Por favor identifiquese</h2>
              <p>Para acceder como usuario registrado utilice esta forma</p>
              <h2>Acceder como un usuario registrado</h2>
              <g:if test="${flash.authenticationFailure}">
	Login failed: ${message(code:"authentication.failure."+flash.authenticationFailure.result).encodeAsHTML()}
              </g:if>
               <auth:form authAction="login" success="[controller:'portal']" error="[controller:'login']">
                 Usuario: <g:textField name="login"/><br/>
                 Password: <input type="password" name="password"/><br/>
    <input type="submit" value="Log in"/>
                   </auth:form>



            
              <h2>Acceder como Invitado:</h2><g:link controller="portalVisitante"> <input type="submit" value="Acceder"/>
             </g:link><p>Nota: Como invitado usted tendra limitaciones en el uso de este sistema</p>
             
            </auth:ifNotLoggedIn>
            <div id="controllerList" class="dialog">
              <g:if test="${auth.user() ==hotelposada.Users.get(1).login}">

              <p>Ir al panel de administracion</p>
              <p><g:link controller="admin"><input type="button" value="Panel de adminsitracion"/></g:link></p>
            
              </g:if>
            </div>
        </div>
      
    </body>
</html>
