package hotelposada
import com.grailsrocks.authentication.*;
class AdminController {

    def authenticationService

    def index = {

        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   }
           else{
               if(Users.count()){
               if(auth.user()!=Users.get(1).login)
               {
                   response.sendError(403) //manda error prohibido si no es el usuario administrador con id 1
               }}else{response.sendError(403)} //manda error prohibido porque ni si quiera existe un usuario adminsitrador
           }

        def glob = ParametrosGlobales.get(1);
        System.out.println(glob);
        System.out.println(glob.precio_h_normal)
       
    }

    def ver =
    {

        render("Login:"+Users.get(1).login+ "<br/> password: "+Users.get(1).password+"<br/>perfil:"+Users.get(1).perfil);
    }

    def configuracion =
    {

    }
}