package hotelposada
import java.util.Date;
import java.util.List;
import java.util.LinkedList;
class RegistroController {

    def authenticationService

    def index = {
     if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }

        Date hoy = new Date();
        int a = hoy.getYear();
        int m = hoy.getMonth();
        int d = hoy.getDay();
         //Listado de tabla general

            params.max = Math.min(params.max ? params.int('max') : 100, 100)
            //Revision de fecha correspondiente al dia de hoy
            List res = Reservas.findAll();
            List reservasHOY = new LinkedList();
        def opciones="";//opciones para seleccion en select

        for (int i=0;i<res.size();i++)
            {
                if(res.get(i).id_habitacion==0) //Verificar que la reserva no este ya registrada en el hotel
                {

                if((res.get(i).f_inicio.getYear()==a)
                    && (res.get(i).f_inicio.getMonth()==m)
                    && (res.get(i).f_inicio.getDay()==d))
                {
                    reservasHOY.push(res.get(i));
                    opciones = opciones+"<option>"+((int)res.get(i).id_reserva).toString() +"</option>";
                }}
            }
            if(opciones==""){
                opciones="<option>No hay reservas para registrar</option>";
            }
            request.opciones= opciones;
            
            [reservasInstanceList: reservasHOY,reservasInstanceTotal: Reservas.count()]
            
    }

    /*Paginas de registro, asigna un cliente con reserva a una habitacion del hotel
     *de igual categoria de su reserva*/
    def registrar = {

        
            
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }
        def cod = params.codigo;
        if(!cod){response.sendError(403)}
        def reserva;
        def categoria;
        def codigo;
        def tipo; //sencilla o doble
        if((reserva= Reservas.findById_reserva(cod))){
            //ahora tenemos los datos de la reserva validos
            codigo = reserva.id_reserva;
            categoria = reserva.msg;
        }
        //Aqui habria un error de que esa reserva no existe
        else{
            render("el codigo insertado es invalido");
        }
        //recopilar lista de habitaciones
        List h = new LinkedList();

        //obtener base de habitaciones
        def hab= Habitaciones.findAllByCategoria(categoria);//encontrar habitaciones con categoria de la reserva
        def opcionesHab="";
        for(int i = 0;i<hab.size();i++)
        {
            if((hab.get(i).estado=="libre") && (hab.get(i).tipo==reserva.habitacion))
            {
                h.push(hab.get(i));
                opcionesHab=opcionesHab+"<option>" +((int)hab.get(i).id_habitacion).toString()+"</option>";
            }
        }
        request.habitaciones = opcionesHab;
        request.clase =categoria;
        request.codigo = (int)codigo;
        request.tipo = reserva.habitacion;


    }
    def datosregistro =
    {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }

        //Obtener parametros para registro
        def codigo = params.codigo;
        def habitacion = params.id_habitacion;
        def categoria = params.clase;
        def tipo = params.tipo;
        request.habitacion = habitacion;
        request.clase =categoria;
        request.codigo = codigo;
        request.tipo = tipo;
    }
    def confirmar = {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {
           }
           def hab = Habitaciones.findById_habitacion(params.id_habitacion);
           def res = Reservas.findById_reserva(params.id_reserva);
           //Guardar y establecer habitacion como ocupada
           hab.estado = "ocupada";
           res.id_habitacion = hab.id_habitacion;
           hab.save();
           res.save();

    }
}
