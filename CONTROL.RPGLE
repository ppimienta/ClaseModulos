**free

      /copy COPY
      dcl-Proc PrEntrada Export;
        dcl-pi *n;
          InNombre like(wNombreT) Const;
          InId like(wIdT) Const;
          OutMsgId like(wMsgIdT);
          outdescripmsg like(wErrorT)
        end-pi;


        dcl-Ds DsUsuario likeDs(DsUsuarioT); 


        dcl-s wSqlState like(wSqlStateT);
        DsUsuario.Nombre = InNombre;
        DsUsuario.Id = InId; 
        DsUsuario.Fecha = FnFormatoFecha(%Date());
        DsUsuario.Tiempo = FnFormatoTiempo(%Time());

        PrInsertar(DsUsuario:wSqlState);
        OutMsgId = wSqlState;
        outdescripmsg = FnErrorSQL(wSqlState);

      end-Proc;
