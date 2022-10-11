**free

      /copy COPY
      dcl-Proc FnFormatoFecha Export;
        dcl-pi *n like(wFechaT);
          InDate Date(*ISO) Const;
        end-pi;

        dcl-s wFecha like(wFechaT);


        wFecha = %Char(InDate:*Iso0);

        Return wFecha;
 
      end-Proc; 

      dcl-Proc FnFormatoTiempo Export;
        dcl-pi *n like(wTiempoT);
          InTime Time(*ISO) Const;
        end-pi;


        dcl-s wTiempo like(wTiempoT);


        wTiempo = %Char(InTime:*hms);

        Return wTiempo;

      end-Proc; 
