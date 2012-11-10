package hotelposada

import java.util.*;
import java.text.*;
import hotelposada.ParametrosGlobales;
import hotelposada.utilidades;


class ReservarController {

    def authenticationService
    def index =
    {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
        request.reserva = "aqui se podran reservar las habitaciones"
           }
    }

    def generar_reserva =
    {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {

        def glob = ParametrosGlobales.get(1);//obtener parametros globales

         def nom = params.nombre; //obtiene parametro nombre de reservar.gsp
        def f_inicio_a = params.fi_a;   //obtiene año fecha de inicio
        def f_inicio_m = params.fi_m;  //obtiene mes de fecha de inicio
        def f_inicio_d = params.fi_d;  //obtiene dia de fecha de inicio
        def f_fin_a = params.ff_a;  //obtiene año fecha final
        def f_fin_m = params.ff_m; //obtiene mes de fecha final
        def f_fin_d = params.ff_d;  //obtiene dia final de la estancia
        def categoria = params.categoria;
        def habitacion = params.habitacion; //obtener si es habitacion sencilla o doble
        def infantil = params.infantil; //obtiene si la habitacion incluye cama infantil valores "si" o "no"

        //Crear formato de fechas a partir de datos introducidos en la forma
        Date f_inic = new Date();
        f_inic.setYear(Integer.parseInt(f_inicio_a)-1900);
        f_inic.setMonth(Integer.parseInt(f_inicio_m)-1);
        f_inic.setDate(Integer.parseInt(f_inicio_d));

        Date f_fin = new Date();
        f_fin.setYear(Integer.parseInt(f_fin_a)-1900);
        f_fin.setMonth(Integer.parseInt(f_fin_m)-1);
        f_fin.setDate(Integer.parseInt(f_fin_d));


            //Realizar primera revision de error, si la fecha es menor al tiempo de adelanto en el que se peude hacer la reserva, esta no se realiza
            int tiempo = (int)ParametrosGlobales.get(1).adelanto_reserva;//tiempo en meses
            tiempo = tiempo*30;//se pasa el tiempo a numero de dias, cada mes tiene 30 dias
            Date hoy = new Date();
            def s = new utilidades();
            int diferencia = s.getDiferenciaDias(hoy,f_inic);
            if(diferencia >=tiempo)
            {
                //se puede continuar
            }
            else{
                render("Hay un error, la fecha de reserva no puede hacerse con menos de "+diferencia+" dias de anticipacion.");
            }




        Integer num_hab;

        switch(categoria)
        {
            case "normal": num_hab = 80;
            break;
            case "business": num_hab = 40;
            break;
            case "alta": num_hab = 20;
            break;
            default: num_hab = -1;
        }

        def reservas_cat = Reservas.findAllByMsg(categoria);

        for(r in reservas_cat)
        {
            if ((r.f_inicio.compareTo(f_inic) >= 0 && r.f_inicio.compareTo(f_fin) <= 0)
                || (r.f_final.compareTo(f_inic) >= 0 && r.f_final.compareTo(f_fin) <= 0)
                || (r.f_inicio.compareTo(f_inic) <= 0 && r.f_final.compareTo(f_fin) >= 0))

                num_hab--;
        }
        if (num_hab > 0)
        {

            //Calcular id_reserva

            int x = Reservas.count();
            int id_res = (Math.random()+1*1000)-1;

            //este algoritmo impide que el numero de la reserva sea repetido
            if(Reservas.count()){

            try{
            for(int i=1;i<=x;i++){
             def rTemp = Reservas.get(i);
                if(id_res==rTemp.id_reserva)
                {
                    id_res = Math.random()*1000;
                    i=1;
                }
            }}catch(Exception e){}
    }

            //Aqui se calcula el precio de alojamiento que sera guardado en la reserva
            //Corregir esta parte que es del importe
            Double importe = 0;

            Double precio_hab;
        switch(habitacion)
        {
            case "sencilla": precio_hab = glob.precio_h_normal;
            break;
            case "doble": precio_hab = glob.precio_h_doble;
        }
        switch(infantil)
        {
            case "si": precio_hab= precio_hab + glob.precio_infantil;
            break;
            case "no":
            break;
        }

            switch(categoria)
            {
                //Se accesa al precio guardado de las variables globales
                case "normal":

                    importe = glob.precio_cat_normal;

                break;
                case "business": importe = glob.precio_cat_business;
                break;
                case "alta": importe = glob.precio_cat_alta;
                break;
                default: importe = -1;
            }
            Double dias = (f_fin.getTime() - f_inic.getTime()) / 1000 / 3600 / 24 + 1;//obtener numero dias
            System.out.println(importe);
            System.out.println(dias);
            Double importeTotal = dias*(precio_hab*importe);
            importeTotal = (double)Math.round(importeTotal);//redondear y mantener como double


            //crear la reserva
            def r = new Reservas(nombre:nom,id_reserva:id_res,id_habitacion:0,
                f_inicio:f_inic, f_final:f_fin,msg:categoria
            ,habitacion:habitacion,infantil:infantil,alojamiento:importeTotal);

            //Aqui se pasan los datos para el gsp con request, para que aparesca la informacion al cliente
            request.codigo = id_res;
            request.f_inicial = DateFormat.getDateInstance().format(f_inic);
            request.f_final = DateFormat.getDateInstance().format(f_fin);
            request.nombre = nom;
            request.habitacion = habitacion;
            request.infantil = infantil;
            request.importeTotal = importeTotal;

            
            /*Comenzar validación*/
            //fecha final no puede ser menor que inicial
            def servicio = new utilidades();
            String errores="";
            if(nom == "" || nom ==null)
            {
                errores = errores + "No has introducido nigun nombre para realizar la reserba <br/>"
            }
            if(f_fin.getTime()<=f_inic.getTime())
            {
                //Hay un error
                errores = errores +"La fecha de termino debe ser mayor que la fecha de inicio<br/>"
            }
            if(f_inic < servicio.getFecha())
            {
                //Hay un error
                errores = errores +"No puedes hacer reservas con fechas de inicio anteriores a hoy<br/>"
            }
            if(errores==""){
            if(!r.hasErrors() && r.save()) {
                def f = new Factura(id_reserva: id_res, importe: importeTotal,cliente:nom)
                f.save();
               // redirect(action:ver,codigo:r.id_reserva)
            }
            else {
                request.codigo = "error";
                redirect(uri:"error?error="+errores);
            }}else{
            render errores;
            }
        }
        else {
            request.codigo = "error";

        }

    }
}
     def ver = {

        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {

        double codigo = null;
        String str_codigo = params.codigo;
        if(str_codigo!=null || str_codigo!="")
           {
            try{
                codigo = Double.parseDouble(str_codigo);
            } catch(Exception e ){};
           }

         if(codigo!=null){
            params.max = Math.min(params.max ? params.int('max') : 100, 100)
            [reservasInstanceList: Reservas.findById_reserva(codigo), reservasInstanceTotal: Reservas.count()]
         }
           }
    }

    def pdf = {

         def nom = params.nombre; //obtiene parametro nombre de reservar.gsp
         def cod = params.codigo;
        def f_i = params.f_i;   //obtiene año fecha de inicio
        def f_f = params.f_f;  //obtiene mes de fecha de inicio
        //def categoria = params.habitacion;
        def habitacion = params.habitacion; //obtener si es habitacion sencilla o doble
        def infantil = params.infantil; //obtiene si la habitacion incluye cama infantil valores "si" o "no"
        def importeTotal = params.importeTotal;
        
        request.codigo = cod;
            request.f_inicial = f_i;
            request.f_final = f_f;
            request.nombre = nom;
            request.habitacion = habitacion;
            request.infantil = infantil;
            request.importeTotal = importeTotal;

    }
    def error = {
        request.error = params.error;
    }
}