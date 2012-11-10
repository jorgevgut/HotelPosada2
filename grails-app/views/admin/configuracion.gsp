

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
<meta name="layout" content="vistaInicio" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Hotel Posada</title>
</head>
<body>

  <div class="post">
    <h1>Configuracion de primer uso</h1>
    <p>A continuacion se seguiran los pasos para la configuración de primer uso.</p>
    <p>Solo debe registrarse como usuario administrador, tenga encuenta que este primer usuario registrado</p>
    <p>tendra el rol de administrador, el cual no podra ser cambiado en el futuro.</p>
    <p>si lo desea podra configurar incluso las variables globales del sistema ademas de tener todas las funcionalidades que este sistema le ofrece.</p>
    <h3>Forma de registro inicial(Cuenta del administrador):</h3>
    <g:if test="${flash.authenticationFailure}">
	Login failed: ${message(code:"authentication.failure."+flash.authenticationFailure.result).encodeAsHTML()}
</g:if>
     <auth:form authAction="signup" success="[controller:'portal',action:'index']"
    error="[controller:'admin', action:'configuracion']">
                    Usuario: <input type="text" name="login" value="" id="login" /><br/>

		    Correo: <input type="text" name="email" value="" id="email" /><br/>

		    Password: <input name="password" value="" type="password"/><br/>

		    Confirmar password: <input name="passwordConfirm" value="" type="password"/><br/>

                    <input type="hidden" name="perfil" value="999"/>
		    <input type="submit" name="_action_Sign up" value="Registarse" />
</auth:form>
  </div>


</body>
</html>
