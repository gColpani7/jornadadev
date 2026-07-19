FUNCTION Main()

LOCAL cNum1
LOCAL cNum2

LOCAL nNum1
LOCAL nNum2

ACCEPT "INFORME O PRIMEIRO VALOR: " TO cNum1
ACCEPT "INFORME O SEGUNDO VALOR: " TO cNum2

nNum1 := Val(cNum1)
nNum2 := Val(cNum2)

    IF nNum1 == nNum2
        Qout("VALORES IGUAIS.")
    ELSE

    IF nNum1 > nNum2
      Qout("O MAIOR VALOR E: " +AllTrim(Str(nNum1)))
      Qout("O MENOR VALOR E: " +AllTrim(Str(nNum2)))

    ELSE 
       Qout("O MAIOR VALOR E: " +AllTrim(Str(nNum2)))
       Qout("O MENOR VALOR E: " +AllTrim(Str(nNum1)))
    ENDIF
ENDIF

RETURN NIL
