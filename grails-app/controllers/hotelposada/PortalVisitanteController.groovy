package hotelposada

class PortalVisitanteController {

    def authenticationService
    def index = {
    if (authenticationService.isLoggedIn(request)) {

            redirect(controller:"portal")
            //si el usuario esta logeado se redirije al portal para usuarios logeados
	   } else {

	   }

    }

    def registro = {

    }
}
