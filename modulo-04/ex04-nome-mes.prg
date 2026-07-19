FUNCTION Main ()

    // troquei os 12 cases pelo Array com a lista de todos os meses.

    LOCAL aMeses := {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    LOCAL nMes := 0
    LOCAL cMes := ""

    Qout(" =====MESES DO ANO===== ")
 
    ACCEPT "INFORME O MES (1 ~ 12): " TO cMes
    nMes :=Val(cMes)

    IF nMes >= 1 .AND. nMes <=12
        Qout("MES ESCOLHIDO: " + aMeses[nMes])
    ELSE
        Qout("MES INVALIDO")
    ENDIF    

RETURN NIL