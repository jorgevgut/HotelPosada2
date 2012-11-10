package hotelposada

class ParametrosGlobalesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def authenticationService

    def index = {
    }

    def save = {
        def parametrosGlobalesInstance = new ParametrosGlobales(params)
        if (parametrosGlobalesInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales'), parametrosGlobalesInstance.id])}"
            redirect(action: "show", id: parametrosGlobalesInstance.id)
        }
        else {
            render(view: "create", model: [parametrosGlobalesInstance: parametrosGlobalesInstance])
        }
    }

    def show = {
        def parametrosGlobalesInstance = ParametrosGlobales.get(params.id)
        if (!parametrosGlobalesInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales'), params.id])}"
            redirect(action: "list")
        }
        else {
            [parametrosGlobalesInstance: parametrosGlobalesInstance]
        }
    }

    def edit = {
        def parametrosGlobalesInstance = ParametrosGlobales.get(1)
        if (!parametrosGlobalesInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [parametrosGlobalesInstance: parametrosGlobalesInstance]
        }
    }

    def update = {
        def parametrosGlobalesInstance = ParametrosGlobales.get(params.id)
        if (parametrosGlobalesInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (parametrosGlobalesInstance.version > version) {
                    
                    parametrosGlobalesInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales')] as Object[], "Another user has updated this ParametrosGlobales while you were editing")
                    render(view: "edit", model: [parametrosGlobalesInstance: parametrosGlobalesInstance])
                    return
                }
            }
            parametrosGlobalesInstance.properties = params
            if (!parametrosGlobalesInstance.hasErrors() && parametrosGlobalesInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales'), parametrosGlobalesInstance.id])}"
                redirect(action: "show", id: parametrosGlobalesInstance.id)
            }
            else {
                render(view: "edit", model: [parametrosGlobalesInstance: parametrosGlobalesInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def parametrosGlobalesInstance = ParametrosGlobales.get(params.id)
        if (parametrosGlobalesInstance) {
            try {
                parametrosGlobalesInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales'), params.id])}"
            redirect(action: "list")
        }
    }
}
