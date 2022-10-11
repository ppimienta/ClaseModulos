**free

      /copy COPY
      dcl-Proc PrInsertar Export;
        dcl-pi *n;
          InUsuario likeDs(DsUsuarioT) Const;
          OutSqlState like(wSqlStateT);
        end-pi;

        Exec SQL
          Insert Into USUARIO Values(:InUsuario);

        OutSqlState = SQLSTATE; 

      end-Proc;   