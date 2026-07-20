FUNCTION Main()

    LOCAL cValor
    LOCAL nValor

    ACCEPT "INFORME UM VALOR INTEIRO: " TO cValor
    nValor  :=Val(cValor)

    IF nValor <= 0
    ENDIF

    WHILE nValor > 0
        Qout("Dobro: " +AllTrim(str(nValor*2)))

        ACCEPT "INFORME OUTRO VALOR OU '0' PARA ENCERRAR O PROGRAMA: " TO cValor
        nValor :=Val(cValor)
    ENDDO

    Qout("VOCE ESCOLHEU SAIR!")

RETURN NIL