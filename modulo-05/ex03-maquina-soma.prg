FUNCTION Main()

    LOCAL nValor := 0
    LOCAL cValor := ""
    LOCAL nTotal := 0
    LOCAL nQtd  := 0

    ACCEPT "DIGITE UM VALOR: " TO cValor
    nValor :=val(cValor)

    IF nValor == 0
    ENDIF

    WHILE nValor <> 0 
        nTotal += nValor
        nQtd++
    
        ACCEPT "DIGITE OUTRO VALOR OU '0' PARA ENCERRAR: " TO cValor
        nValor :=val(cValor)
            Qout("")

    ENDDO

    Qout(" =====RESULTADO===== ")
    Qout("SOMA TOTAL DOS VALORES: " + AllTrim(Str(nTotal)))
    Qout("QUANTIDADE DE VALORES SOMADOS: " +AllTrim(Str(nQtd)))
    Qout("")

RETURN NIL