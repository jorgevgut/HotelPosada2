package hotelposada

class Users {

    String login
String password
String email
int status // must be set to AuthenticationService.STATUS_NEW at init
int perfil //0 o null para usuario normla, 1 para admin
    static constraints = {
        login(size:5..20, blank:false, unique:true)
        password(size:5..100, blank:false)
        email(email:true, blank:false)
        status(blank:false)
    }
}
