package hotelposada
import hotelposada.utilidades;
class CancelarController {

    def authenticationService
    def index = {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }

        List res = Reservas.findAll();
            List reservasCancelables = new LinkedList();
        def opciones="";//opciones para seleccion en select

        for (int i=0;i<res.size();i++)
            {
                if(res.get(i).id_habitacion==0) //Verifica reservas que no estan registradas en el hotel para cancelarlas
                {
                    //Aquellas personas que no estan hospedadas en el hotel pueden cancelar sus reservas
                    
                    reservasCancelables.push(res.get(i));
                    opciones = opciones+"<option>"+((int)res.get(i).id_reserva).toString() +"</option>";
                }
            }
            if(opciones==""){
                opciones="<option>No hay reservas que cancelar</option>";
            }
            request.opciones= opciones;
    }

        def cancela = {


        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }


        def penalizar=null;
        def codigo=null;
        def penalizacion=null;
        def coste= null;
        String str_codigo = params.codigo;
        if(str_codigo!=null || str_codigo!="")
           {
               
            try{
                codigo = Double.parseDouble(str_codigo);

            } catch(Exception e ){};
            
                def reserva = Reservas.findById_reserva(codigo);
                //definir valorees de penalziacion
                double penalizacion1 = ParametrosGlobales.get(1).comp_5a2;//penalziacion entre 5 a 2 dias antes
                double penalizacion2 = ParametrosGlobales.get(1).comp_47a24; //penalizacion entre 1 y 2 dias antes
                double penalizacion3 = ParametrosGlobales.get(1).comp_m24; //penalizacion por cancelar el mismo dia
                //fechas a comparar
                Date hoy = new Date();
                Date fechaRes = reserva.f_final;

            //definir utilidades para calcular diferencia de dias
            def servicio = new utilidades();
                if(hoy.before(fechaRes))
                {
                    if((5>=servicio.getDiferenciaDias(hoy,fechaRes)) && (servicio.getDiferenciaDias(hoy,fechaRes)>2))//diferencia de 5 dias
                    {
                        penalizacion=penalizacion1;
                        coste = reserva.alojamiento*(penalizacion/100);
                            penalizar=true;
                    }
                    if((2>=servicio.getDiferenciaDias(hoy,fechaRes)) && (servicio.getDiferenciaDias(hoy,fechaRes)>1))//diferencia de 2 dias
                    {
                        penalizacion=penalizacion2;
                        coste = reserva.alojamiento*(penalizacion/100);
                        penalizar=true;
                    }

                    if(1==servicio.getDiferenciaDias(hoy,fechaRes))//el mismo dia
                    {
                         penalizacion=penalizacion3;
                         coste = reserva.alojamiento*(penalizacion/100);
                         penalizar=true;
                    }
                    if(5<servicio.getDiferenciaDias(hoy,fechaRes)){
                        penalizar=false;coste = 0;
                    }

                    //penalizacion  para 1 a dos dias

                }
                else{render("ha ocurrido un error ocn las fechas, esto puede deberse a que la fecha de hoy es superior a la fecha para la cual se reservo la habitacion")}
                }

            
           
           else{
               //en caso de querer acceder sin autorizacion a esta pagina y sin seguir el flujo correcto
               render("Siga el formulario indicado para reservas");
           }


        request.codigo= (int)codigo;
        request.penalizacion = penalizacion;
        request.penalizar = penalizar;
        request.coste = coste;


    }

    def reservacancelada = {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }


        double codigo = null;
        String str_codigo = params.codigo;
        if(str_codigo!=null || str_codigo!="")
           {
            try{
                codigo = Double.parseDouble(str_codigo);
            } catch(Exception e ){};
           }

        //codigo de cancelacion y purgar toda variable relacionada
         if(codigo!=null){
            def reserva = Reservas.findById_reserva(codigo)
            
            if(reserva)
            {
                def despliegue = "cancelado";
                request.despliegue = despliegue;
                reserva.delete(flush: true);
                def habitacion = Habitaciones.findById_habitacion(reserva.id_habitacion);
            if(habitacion)
             habitacion.estado="libre";

            }
            def factura = Factura.findById_reserva(codigo)
            if (factura)
                factura.delete(flush: true)
            def consumos = Minibar.findById_reserva(codigo)
            if(consumos)
                consumos.delete(flush:true)
         }


        request.codigo=codigo;
        request.penalizacion=params.penalizacion;
    }
}
