FUNCTION Main()

LOCAL cIdade
LOCAL cDependentes

LOCAL nDependentes
LOCAL nIdade

LOCAL nPlano
LOCAL nValor


Qout(" ====PLANO DE SAUDE==== ")

ACCEPT "INFORME A IDADE DO CLIENTE: " TO cIdade
ACCEPT "INFORME A QUANTIDADE DE DEPENDENTES: " TO cDependentes

nIdade :=Val(cIdade)
nDependentes :=Val(cDependentes)

    IF nIdade <= 25
        nPlano := 180
    ELSEIF nIdade <= 40
        nPlano := 260
    ELSEIF nIdade <= 60
        nPlano := 380    
    ELSE 
        nPlano := 520
    ENDIF

nValor = nPlano + (nDependentes * 90)

Qout("")
Qout("VALOR FAIXA ETARIA:R$ " + AllTrim(str(nPlano)))
Qout("VALOR POR DEPENDENTES:R$ " + AllTrim((" 90")))
Qout("VALOR TOTAL:R$ " + AllTrim(str(nValor)))
Qout("")

RETURN NIL