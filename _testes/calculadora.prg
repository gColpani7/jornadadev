FUNCTION Main()
   
    LOCAL nA
    LOCAL nB
    LOCAL cA
    LOCAL cB
   
    ACCEPT "Digite o primeiro numero: " TO cA
    ACCEPT "Digite o segundo numero: " TO cB
    
    nA := Val(cA)
    nB := Val(cB)

    Qout("Soma:      " + Str(nA + nB, 10, 2))
    Qout("Subtracao: " + Str(nA - nB, 10, 2))
    Qout("Produto:   " + Str(nA * nB, 10, 2))

    IF nB <> 0
        Qout("Divisao:   " + Str(nA / nB, 10, 2))
    ELSE
        Qout("Nao e possivel dividir por zero.")
    ENDIF
RETURN NIL