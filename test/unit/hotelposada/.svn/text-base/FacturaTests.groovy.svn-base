package hotelposada

import grails.test.*

class FacturaTests extends GrailsUnitTestCase {

    void testRevisarFactura() {//revisamos que los se guarden datos correctamente en la clase Factura
        def facturasList = [new Factura(id_reserva:100,importe:100,cliente:"Armando Puertas"),
              new Factura(id_reserva:200,importe:300,cliente:"Rocio Bustamante"),
              new Factura(id_reserva:300,importe:1500,cliente:"Enrique Iglesias")]
        mockDomain(Factura,facturasList);

    }
}
