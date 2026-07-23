FUNCTION Main()

    LOCAL aDias := {"Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sabado"}
    LOCAL cDias := ""
    LOCAL nDias := 0


    Qout("==== DIAS DA SEMANA POR INDICE ====")
    ACCEPT "ESCOLHA O DIA DA SEMANA DE 1 A 7: " TO cDias
    nDias:=Val(cDias)

    IF nDias >= 1 .AND. nDias <= 7
        Qout("O DIA ESCOLHIDO FOI: ", aDias[nDias])
    ELSE
        Qout("ERRO: NAO EXISTE ESSE DIA")
    ENDIF
     
RETURN NIL