package hotelposada

class HabitacionesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def authenticationService
    def index = {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }
        redirect(action: "list", params: params)
    }

    def list = {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [habitacionesInstanceList: Habitaciones.list(params), habitacionesInstanceTotal: Habitaciones.count()]
    }

    

}
