package hotelposada

import grails.test.*
import java.util.Date;
class ReservasTests extends GrailsUnitTestCase {
   

    void testRevisarReservas() {
        Date hoy = new Date();
            Date otrodia = new Date();
            otrodia = otrodia.next();

        def reservasLista = [
            new Reservas(nombre:"Armando Puertas",id_reserva:999,id_habitacion:0,
                f_inicio:hoy, f_final:otrodia,msg:"normal"
            ,habitacion:"sencilla",infantil:"no",alojamiento:200),
        new Reservas(nombre:"Emiliano Zapata",id_reserva:666,id_habitacion:0,
                f_inicio:hoy, f_final:otrodia,msg:"business"
            ,habitacion:"doble",infantil:"si",alojamiento:500),
        new Reservas(nombre:"Julio Navarrete",id_reserva:759,id_habitacion:0,
                f_inicio:hoy, f_final:otrodia.next().next(),msg:"alta"
            ,habitacion:"sencilla",infantil:"no",alojamiento:200),
        new Reservas(nombre:"Carla Hinojosa",id_reserva:250,id_habitacion:0,
                f_inicio:hoy.next().next(), f_final:otrodia.next().next(),msg:"normal"
            ,habitacion:"sencilla",infantil:"no",alojamiento:300)
        ]
        mockDomain(Reservas,reservasLista);

    }
}
