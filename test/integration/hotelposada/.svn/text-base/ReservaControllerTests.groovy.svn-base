package hotelposada

import grails.test.*

class ReservaControllerTests extends GroovyTestCase {
 
    //test para comprobar si la forma de reserva se abre correctamente
    void testAbreReserva(){
        def controlador = new ReservarController();
        controlador.index();
    }

    //test en el que simulamos la creacion de una reserva, se especifican los parametros de la nueva reserva y se
    //ingresan para poder generar la reserva
    void testSimularReserva() {
        def controlador = new ReservarController();

        //insertamos los parametros necesarios
        controlador.params.nombre="Nombre prueba";
        controlador.params.fi_a ="2011";  
        controlador.params.fi_m="10";  
        controlador.params.fi_d="10";  
        controlador.params.ff_a="2011";  
        controlador.params.ff_m="10"; 
        controlador.params.ff_d="14";  
        controlador.params.categoria="normal";
        controlador.params.habitacion="doble"; 
        controlador.params.infantil="no";
        //solicitamos al controlador generar la reserva
        controlador.generar_reserva()

    }
}
