FUNCTION Main()

LOCAL nSalario
LOCAL nNovoSal
LOCAL nReajuste
LOCAL cSalario

ACCEPT "INFORME SEU SALARIO ATUAL: " TO cSalario
nSalario := Val(cSalario)

IF nSalario < 1000
    nReajuste   := 0.15

ELSEIF nSalario <= 2000
    nReajuste   := 0.12

ELSEIF nSalario <= 4000
    nReajuste   := 0.08

ELSE
    nReajuste := 0.05
ENDIF 

nNovoSal := nSalario + (nSalario * nReajuste)

QOut("")
Qout(" ====REAJUSTE SALARIAL====")
Qout("NOVO SALARIO: " +AllTrim(Str(nNovoSal)))

RETURN NIL