/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package hotelposada;

/**
 *
 * @author porca
 */

import java.util.*;
public class utilidades {

    //este metodo regresa la fecha del dia de hoy
    public Date getFecha()
    {
        Date a;
        a = new Date();
        return a;
    }

    public int getDiferenciaDias(Date dat1, Date dat2)
    {
        //neutralizar horas, minutos y segundos
        dat1.setHours(0);
        dat1.setMinutes(0);
        dat1.setSeconds(0);
        dat2.setHours(0);
        dat2.setMinutes(0);
        dat2.setSeconds(0);
        long DIA = 1000 * 60 * 60 * 24; //milisegundos en 1 dia
        long tiempo1 = dat1.getTime();
        long tiempo2 = dat2.getTime();
        long DiasMillisec = tiempo2-tiempo1;
        long resultado = DiasMillisec/DIA;
        resultado++;
        return (int)resultado;




    }

}
