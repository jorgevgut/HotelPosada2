package hotelposada

import grails.test.*
import com.grailsrocks.authentication.*;
class AutenticacionTests extends GroovyTestCase {
//En este test se busca comprobar el funcionamiento del plugin de autenticacion para el sistema

    //revisa autenticacion en portal para el administrador
    void testRegistroUsuarioAdmin() {
       def auth = new AdminController()
       //probamos introducir los parametros al controlador de administrador
        auth.params.login = "administrator"
        auth.params.password = "administrador123"
        auth.params.passwordConfirm = "administrador123"
        auth.params.email = "email@email.com"
        //se prueba accesar
        auth.configuracion();

    }
   
}
