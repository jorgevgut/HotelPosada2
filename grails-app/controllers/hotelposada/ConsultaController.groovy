package hotelposada
import java.util.*;
class ConsultaController {
    def authenticationService
   def onlyLoggedInUsers = {
       if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
            response.sendError(403)
	   } else {
	  render "se pudo";
	   }
       }
   

    def index = {



        //CODIGO JORGE
       
        String c = params.nombre;
        
         //Listado de tabla general
         if(c!=null){
            params.max = Math.min(params.max ? params.int('max') : 100, 100)
            [reservasInstanceList: Reservas.findByNombre(c), reservasInstanceTotal: Reservas.count()]
         }

    }
    def consultarFechas =  {}
    def resultadoFechas = {



        def categoria = params.categoria; //obtiene parametro categoria
        def f_inicio_a = params.fi_a;   //obtiene año fecha de inicio
        def f_inicio_m = params.fi_m;  //obtiene mes de fecha de inicio
        def f_inicio_d = params.fi_d;  //obtiene dia de fecha de inicio
        def f_fin_a = params.ff_a;  //obtiene año fecha final
        def f_fin_m = params.ff_m; //obtiene mes de fecha final
        def f_fin_d = params.ff_d;  //obtiene dia final de la estancia

        //Crear formato de fechas a partir de datos introducidos en la forma
        Date f_inic = new Date();
        f_inic.setYear(Integer.parseInt(f_inicio_a)-1900);
        f_inic.setMonth(Integer.parseInt(f_inicio_m)-1);
        f_inic.setDate(Integer.parseInt(f_inicio_d));

        Date f_fin = new Date();
        f_fin.setYear(Integer.parseInt(f_fin_a)-1900);
        f_fin.setMonth(Integer.parseInt(f_fin_m)-1);
        f_fin.setDate(Integer.parseInt(f_fin_a));

        Integer num_hab;
        switch(categoria)
        {
            case "normal": num_hab = 80;
            break;
            case "business": num_hab = 40;
            break;
            case "alta": num_hab = 20;
            break;
        }

        def reservas_cat = Reservas.findAllByMsg(categoria);

        for(r in reservas_cat)
        {
            if ((r.f_inicio.compareTo(f_inic) >= 0 && r.f_inicio.compareTo(f_fin) <= 0)
                || (r.f_final.compareTo(f_inic) >= 0 && r.f_final.compareTo(f_fin) <= 0)
                || (r.f_inicio.compareTo(f_inic) <= 0 && r.f_final.compareTo(f_fin) >= 0))

                num_hab--;
        }
        request.num_hab = num_hab;


    }

    def consulta =
    {



        //CODIGO JORGE
        int cod=null;
        String c = params.codigo;
        if(c!=null || c!="")
           {
            try{
                cod = Integer.parseInt(c);
            } catch(Exception e ){};
           } 
        
         //Listado de tabla general
         if(cod!=null){
            params.max = Math.min(params.max ? params.int('max') : 100, 100)
            [reservasInstanceList: Reservas.findById_reserva(cod), reservasInstanceTotal: Reservas.count()]
         }
         
    }

        def consultaTodo =
        {

        //CODIGO JORGE
        int cod=null;
        String c = params.codigo;
        if(c!=null || c!="")
           {
            try{
                cod = Integer.parseInt(c);
            } catch(Exception e ){};
           }

         //Listado de tabla general
         cod=1;
         if(cod!=null){
            params.max = Math.min(params.max ? params.int('max') : 100, 100)
           [reservasInstanceList: Reservas.list(params), reservasInstanceTotal: Reservas.count()]
       }


        }

  
}
