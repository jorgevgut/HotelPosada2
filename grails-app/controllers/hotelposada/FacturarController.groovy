package hotelposada

class FacturarController {

    def authenticationService

    def index =
    {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   }else{}
          
             List res = Reservas.findAll();
            List reservasHOY = new LinkedList();
        def opciones="";//opciones para seleccion en select

        for (int i=0;i<res.size();i++)
            {
                if(res.get(i).id_habitacion>0) //Verificar que la reserva no este ya registrada en el hotel
                {

                
                    reservasHOY.push(res.get(i));
                    opciones = opciones+"<option>"+((int)res.get(i).id_reserva).toString() +"</option>";
                }
            }
            if(opciones==""){
                opciones="<option>No hay reservas elegibles para checkout</option>";
            }
            request.opciones= opciones;

    }
 def index2 = {
      if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {

        double codigo = null;
        request.importe = 0;
        String str_codigo = params.codigo;
        if(str_codigo!=null || str_codigo!="")
           {
            try{
                codigo = Double.parseDouble(str_codigo);
            } catch(Exception e ){};
           }

         if(codigo!=null){
            def factura = Factura.findById_reserva(codigo)
            request.codigo = codigo;
            request.importe = 0;
            if (factura)
                request.importe = factura.importe;

         }
    }
 }
    def sumar = {
         if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {}

        Double importeTotal=0;
        Double codigo = null;
        Double importe = 0;
        Double consumibles_precio = null;


        String str_codigo = params.codigo;
        String str_importe = params.importe;

        if(str_codigo!=null || str_codigo!="")
           {
            try{
                codigo = Double.parseDouble(str_codigo);

            } catch(Exception e ){};
           }
           if(str_importe!=null || str_importe!="")
           {
            try{
                importe = Double.parseDouble(str_importe);
            } catch(Exception e ){};
           }

        /*Consumibles precios e importe*/
        Double sum_alcohol = 0;
        Double sum_agua = 0;
        Double sum_cerv = 0;
        Double sum_minutos = 0;
        Double sum_vino =0;
        Double sum_refresco= 0;


        if(str_codigo!=null)
        {
            try{
             sum_alcohol = Double.parseDouble(params.alcohol);
        sum_agua = Double.parseDouble(params.agua);
       sum_cerv = Double.parseDouble(params.cerv);
       if((params.minutos==null) || (params.minutos==""))
       {
         sum_minutos=0;
       }
       else{
           try{
               sum_minutos = Double.parseDouble(params.minutos);
           }catch(Exception e){sum_minutos=0;}
       }
        sum_vino =Double.parseDouble( params.vino);
       sum_refresco= Double.parseDouble(params.refresco);
        sum_alcohol = sum_alcohol*10; //precio distinto por categoria
        sum_agua= sum_agua*4;
        sum_refresco= sum_refresco*5;
        sum_vino = sum_vino*15; //precio distinto por categoria
        sum_cerv = sum_cerv*7;  //precio distinto por categoria

            }catch(Exception e){}
        }
        
        


              if(codigo!=null && importe != null){
            def factura = Factura.findById_reserva(codigo)
        /*    def minibar = Minibar.findById_reserva(codigo)
            if(!minibar){
           def m = new Minibar(id_reserva:codigo,cerveza:sum_cerv,refresco:sum_refresco,agua:sum_agua,telefono:sum_minutos,vino:sum_vino,alcohol:sum_alcohol);
           m.save();}
      else{
           minibar =new Minibar(id_reserva:codigo,cerveza:sum_cerv,refresco:sum_refresco,agua:sum_agua,telefono:sum_minutos,vino:sum_vino,alcohol:sum_alcohol);
           minibar.save();
             }*/

            importeTotal+= Reservas.findById_reserva(codigo).alojamiento;//se añade al importe total el alojamiento
            //if (factura)
            //{
                // Creamos una nueva con la suma del importe
                importeTotal += (sum_alcohol + sum_refresco + sum_agua + sum_vino + sum_cerv + sum_minutos);
                if(!factura)
                {def f=  new Factura(id_reserva: codigo, importe: importeTotal,cliente:Reservas.findById_reserva(codigo).nombre);
             f.save();

                }else{
                    factura = new Factura(id_reserva: codigo, importe: importeTotal,cliente:Reservas.findById_reserva(codigo).nombre);
                    factura.save();
                }
             
            /*}
            else
            {
                 importeTotal += (sum_alcohol + sum_refresco + sum_agua + sum_vino + sum_cerv + sum_minutos);
                // La creamos
                new Factura(id_reserva:codigo, importe:importeTotal,cliente:Reservas.findById_reserva(codigo).nombre).save();
            }*/

         }
         request.codigo=(int)codigo;
         request.importe=(importeTotal-Reservas.findById_reserva(codigo).alojamiento);
         request.importeTotal=importeTotal;
    }
    def confirmar =
    {
        if (!authenticationService.isLoggedIn(request)) {
             // Redirect or return Forbidden
             response.sendError(403)
	   } else {}

        Double sum_alcohol = 0;
        Double sum_agua = 0;
        Double sum_cerv = 0;
        Double sum_minutos = 0;
        Double sum_vino =0;
        Double sum_refresco= 0;

            try{
             sum_alcohol = Double.parseDouble(params.alcohol);
        sum_agua = Double.parseDouble(params.agua);
       sum_cerv = Double.parseDouble(params.cerv);
       if((params.minutos==null) || (params.minutos==""))
       {
         sum_minutos=0;
       }
       else{
           try{
               sum_minutos = Double.parseDouble(params.minutos);
           }catch(Exception e){sum_minutos=0;}
       }
        sum_vino =Double.parseDouble( params.vino);
       sum_refresco= Double.parseDouble(params.refresco);
        sum_alcohol = sum_alcohol*10; //precio distinto por categoria
        sum_agua= sum_agua*4;
        sum_refresco= sum_refresco*5;
        sum_vino = sum_vino*15; //precio distinto por categoria
        sum_cerv = sum_cerv*7;  //precio distinto por categoria

            }catch(Exception e){}

        Double codigo;
        try{
            codigo = Double.parseDouble(params.codigo);
        }catch(Exception e){render("Se ha intentado introducir un codigo de reserva invalido")}

          def minibar = Minibar.findById_reserva(codigo)
            if(!minibar){
           def m = new Minibar(id_reserva:codigo,cerveza:sum_cerv,refresco:sum_refresco,agua:sum_agua,telefono:sum_minutos,vino:sum_vino,alcohol:sum_alcohol);
           m.save();}
      else{
           new Minibar(id_reserva:codigo,cerveza:sum_cerv,refresco:sum_refresco,agua:sum_agua,telefono:sum_minutos,vino:sum_vino,alcohol:sum_alcohol).save();
             }

        def m = Minibar.findById_reserva(codigo);

        //modificar factura
        def f = Factura.findById_reserva(codigo);
        f.importe= Reservas.findById_reserva(codigo).alojamiento + m.cerveza+m.alcohol+m.agua+m.telefono+m.refresco+m.vino;
        f.save();

        def hab = Habitaciones.findById_habitacion(Reservas.findById_reserva(codigo).id_habitacion);
        hab.estado = "libre";
        hab.save();
        Reservas.findById_reserva(codigo).delete();
        String nombre = Reservas.findById_reserva(codigo).nombre;
        Double coste_cerveza = m.cerveza;
        Double coste_alcohol = m.alcohol;
        Double coste_agua    = m.agua;
        Double coste_minutos  = m.telefono;
        Double coste_refresco = m.refresco;
        Double coste_vino = m.vino;
        Double importeTotal = Factura.findById_reserva(codigo).importe;
        Double importe = (importeTotal-Reservas.findById_reserva(codigo).alojamiento);
        request.coste_cerveza = coste_cerveza;
        request.coste_alcohol = coste_alcohol;
        request.coste_agua = coste_agua;
        request.coste_minutos = coste_minutos;
        request.coste_vino = coste_vino;
        request.coste_refresco = coste_refresco;
        request.codigo =(int)codigo;
        request.nombre = nombre;
        request.importe = importe;
        request.importeTotal = importeTotal;


    }

    def pdf =
    {
        Double codigo = Double.parseDouble(params.codigo);
        Double cons = Double.parseDouble(params.consumibles);
        Double importeTotal = Double.parseDouble(params.importeTotal);
        Double alojamiento  = Double.parseDouble(params.alojamiento);
        String nombre = params.nombre;
        request.codigo =(int)codigo;
        request.nombre = nombre;
        request.importe = cons;
        request.importeTotal = importeTotal;
        request.coste_cerveza = params.coste_cerveza;
        request.coste_alcohol = params.coste_alcohol;
        request.coste_agua = params.coste_agua;
        request.coste_minutos = params.coste_minutos;
        request.coste_vino = params.coste_vino;
        request.coste_refresco = params.coste_refresco;
        

     
    }

    
}

