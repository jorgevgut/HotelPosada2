package hotelposada

class PortalController {

    def authenticationService
    def index = { 
         if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {}
    }
}
