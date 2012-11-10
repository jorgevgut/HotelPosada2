package hotelposada
import java.util.*;
import com.grailsrocks.authentication.*;
class LoginController {

    def authenticationService

    def index = {
       if(!Users.count())
       {
           redirect(controller:"admin",action:"configuracion")
       }

    }
    def signup ={ render "Ya te has registrado"}
    def error ={ render "Error"}
}
