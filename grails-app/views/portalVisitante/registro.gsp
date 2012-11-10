<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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
    <title>Forma de Registro</title>

  </head>
  <body>
    <div>
            <div id="pageBody" class="dialog">
    <h1>Formulario de registro</h1>
      <p>Registrese</p>
              <auth:form authAction="signup" success="[controller:'portal',action:'index']"
    error="[controller:'portalVisitante', action:'registro']">
                    Usuario: <input type="text" name="login" value="" id="login" /><br/>

		    Correo: <input type="text" name="email" value="" id="email" /><br/>

		    Password: <input name="password" value="" type="password"/><br/>

		    Confirmar password: <input name="passwordConfirm" value="" type="password"/><br/>

                    <input type="hidden" name="perfil" value="999"/>
		    <input type="submit" name="_action_Sign up" value="Registarse" />
</auth:form>
      <p>Recuerda que como usuario registrado podras tener acceso a muchas mas funciones.</p>
      <p>Si no deseas registrarte puedes cancelar esta operacion, solo oprime el boton "volver"</p>
      <form action="index"><input type="submit" value="volver"/></form>
            </div>
 </div>
  </body>
</html>
