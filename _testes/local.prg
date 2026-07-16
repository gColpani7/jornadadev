#define _TESTE03 "Teste03"



FUNCTION Main()
    //_TESTE03 := "Teste03"
    Qout(_TESTE03)
    PUBLIC nNumero := 50    
    operacoes()
    soma()
    
RETURN NIL

FUNCTION Operacoes()

    //PRIVATE nNumero := 10
    nNumero := 66
    Soma()
    Substrai()

RETURN NIL


FUNCTION Soma()

    //LOCAL nNumero := 20
    QOut(nNumero)
    QOut("Funcao Soma")

RETURN NIL

FUNCTION Substrai()

    //LOCAL nNumero := 20
    QOut(nNumero)  
    QOut("Funcao Substrai")

RETURN NIL