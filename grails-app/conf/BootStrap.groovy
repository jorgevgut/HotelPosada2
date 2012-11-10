
import hotelposada.ParametrosGlobales
import hotelposada.Users
import hotelposada.Reservas
import hotelposada.Habitaciones
import java.util.Date;
import com.grailsrocks.authentication.*;

class BootStrap {

    def init = { servletContext ->


    
        System.out.println("Realizando configuraciones de la aplicación para su primer uso:")
        //Definir el usuario administrador
        //inyectar parametrosGlobales
        //ParametrosGlobales
        if (!ParametrosGlobales.count()) {
            System.out.println("Creando parametros globales");
           new ParametrosGlobales(precio_h_normal:40,precio_h_doble:70,precio_infantil:10,precio_cat_normal:1 ,precio_cat_business:1.3,precio_cat_alta:2,adelanto_reserva:2,comp_5a2:10,comp_47a24:30,comp_m24:100).save(failOnError: true)
        }
        else
        {System.out.println("No se guardo datos al inicio");}

        //Añadir las habitaciones al hotel, solo la primera vez que se ejecuta
        if(!Habitaciones.count())
        {
            double i=1; //contador
            //añadir 30 habitaciones de categoria normal
            for(i;i<=30;i++)
            {
                //creamos 15 habitaciones sencillas y 15 dobles
                if(i<=15){
                new Habitaciones(id_habitacion:i,categoria:"normal",tipo:"sencilla",estado:"libre").save(failOnError: true);
                }
                else{
                 new Habitaciones(id_habitacion:i,categoria:"normal",tipo:"doble",estado:"libre").save(failOnError: true);
                }
            }
            //añadir 15 habitaciones de categoria business

            for(i;i<=45;i++)
            {
                //creamos 8 habitaciones sencillas y 7 dobles
                if(i<=38){
                new Habitaciones(id_habitacion:i,categoria:"business",tipo:"sencilla",estado:"libre").save(failOnError: true);
                }
                else{
                 new Habitaciones(id_habitacion:i,categoria:"business",tipo:"doble",estado:"libre").save(failOnError: true);
                }
            }

            //añadir 10 habitaciones de categoria alta
            for(i;i<=55;i++)
            {
                //creamos 5 habitaciones sencillas y 5 dobles
                if(i<=50){
                new Habitaciones(id_habitacion:i,categoria:"alta",tipo:"sencilla",estado:"libre").save(failOnError: true);
                }
                else{
                 new Habitaciones(id_habitacion:i,categoria:"alta",tipo:"doble",estado:"libre").save(failOnError: true);
                }
            }
        }else{}
        //Crear reservas por default

        if (!Reservas.count()) {
            System.out.println("Creando reservas por default");

            //armando puertas se registra con la fecha del dia de hoy para practicar el registro de llegada del cliente
            //armando se quedara solo 1 dia en el hotel
            //armando aunque tiene la reserva hoy aun no se ha presentado al hotel, por lo que esperaremos su llegada
            Date hoy = new Date();
            Date otrodia = new Date();
            otrodia = otrodia.next();

           new Reservas(nombre:"Armando Puertas",id_reserva:999,id_habitacion:0,
                f_inicio:hoy, f_final:otrodia,msg:"normal"
            ,habitacion:"sencilla",infantil:"no",alojamiento:200).save(failOnError: true);
        new Reservas(nombre:"Emiliano Zapata",id_reserva:666,id_habitacion:0,
                f_inicio:hoy, f_final:otrodia,msg:"business"
            ,habitacion:"doble",infantil:"si",alojamiento:500).save(failOnError: true);
        new Reservas(nombre:"Julio Navarrete",id_reserva:759,id_habitacion:0,
                f_inicio:hoy, f_final:otrodia.next().next(),msg:"alta"
            ,habitacion:"sencilla",infantil:"no",alojamiento:200).save(failOnError: true);
        new Reservas(nombre:"Carla Hinojosa",id_reserva:250,id_habitacion:0,
                f_inicio:hoy.next().next(), f_final:otrodia.next().next(),msg:"normal"
            ,habitacion:"sencilla",infantil:"no",alojamiento:300).save(failOnError: true);
        }
        else{}
    }
    def destroy = {
    }
}
