package hotelposada

import grails.test.*
import hotelposada.*;
class HabitacionesTests extends GrailsUnitTestCase {
  protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testRevisarHabitaciones() //este test revisa que la clase habitaciones funcione correctametne
    {

            def hab = [new Habitaciones(id_habitacion:1,categoria:"normal",tipo:"doble",estado:"libre"),
            new Habitaciones(id_habitacion:2,categoria:"normal",tipo:"sencilla",estado:"libre"),
            new Habitaciones(id_habitacion:3,categoria:"alta",tipo:"doble",estado:"libre")]
            mockDomain(Habitaciones, hab);
       
    }

}
