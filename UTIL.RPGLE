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

      dcl-Proc FnErrorSQL Export;
        dcl-pi *n like(wErrorT);
          InErrorSql like(werrorsqlT) Const;
        end-pi;

        dcl-s wmensaje like(wErrorT);
        Select;
           when InErrorSql = '00000' then
                wmensaje = 'Exitoso' ;
           when InErrorSql = '00100' then
                wmensaje = 'No encontrado';
           other 
                wmensaje = 'No definido';         
        endsl;
      
        Return wmensaje;

      end-Proc; 
