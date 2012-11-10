package hotelposada

import grails.test.*

class CancelarControllerTests extends GroovyTestCase {
   

    void testAbreCancelacion(){//este pequeño test verifica que se despliegue la forma de cancelacion
        def cont = new CancelarController();
        cont.index();

    }
    //test para verificar que el controlador compruebe el codigo de la reserva que se desea cancelar
    void testSimularCancelacion() {
        def cont = new CancelarController();
        cont.params.codigo = "999" //el codigo de una reserva existente, si no existiese no pasaria la prueba
        cont.cancela();

    }
}
