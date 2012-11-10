package hotelposada

import grails.test.*

class RegistroControllerTests extends GroovyTestCase {
  
    void testAbreRegistro() {
        def cont = new RegistroController();
        cont.index();

    }

    void testSimulaRegistro()
    {
        def cont = new RegistroController();
        cont.params.codigo="999";
        cont.registrar();
    }
}
