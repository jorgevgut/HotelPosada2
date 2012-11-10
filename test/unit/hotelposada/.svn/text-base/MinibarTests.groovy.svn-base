package hotelposada

import grails.test.*

class MinibarTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testGastosMinibar() {//probar que se realizen las funciones con la base de datos correctamente

        def testInstances = [ new Minibar(id_reserva:1,cerveza:10,
             refresco:10,agua:5,telefono:23,vino:23,alcohol:23)]
        mockDomain(Minibar,testInstances);

    }
}
