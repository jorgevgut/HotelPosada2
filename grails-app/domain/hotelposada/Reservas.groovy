package hotelposada

class Reservas {

    Double id_reserva
    Double id_habitacion
    String nombre
    Date f_inicio
    Date f_final
    String msg //categoria
    String habitacion //sencilla o doble
    String infantil // si o no
    Double alojamiento // precio de ALOJAMIENTO

    static constraints = {
    }
}
