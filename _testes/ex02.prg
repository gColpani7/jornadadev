FUNCTION main()

   LOCAL nValor := 250
   LOCAL nDesconto := 0
   LOCAL nTotal := 0
    
   IF (nValor > 100)
       nDesconto := nValor * 0.10 
    ENDIF

    nTotal := nValor - nDesconto

    Qout("O valor com desconto e de R$ " + str(nDesconto))

RETURN NIL