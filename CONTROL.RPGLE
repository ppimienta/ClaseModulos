**free

      /copy COPY
      dcl-Proc PrEntrada Export;
        dcl-pi *n;
          InNombre like(wNombreT) Const;
          InId like(wIdT) Const;
          OutMsgId like(wMsgIdT);
        end-pi;


        dcl-Ds DsUsuario likeDs(DsUsuarioT); 


        dcl-s wSqlState like(wSqlStateT);
