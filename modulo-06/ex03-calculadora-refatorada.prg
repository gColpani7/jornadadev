FUNCTION Main()

    LOCAL nValor1
    LOCAL nValor2
    LOCAL cOp
    LOCAL nResultado

Qout("==== CALCULADORA ====")

nValor1 := LerNumero("DIGITE O PRIMEIRO VALOR: ")   //Le o valor digitado no ACCEPT do LerNumero()
nValor2 := LerNumero("DIGITE O SEGUNDO VALOR: ")    //Le o valor digitado no ACCEPT do LerNumero()

    QOut("OPERACOES VALIDAS: +(Soma), -(Sub), *(Mult), /(Div), ^(Potencia), R(Raiz Quadrada)")

    ACCEPT "DIGITE A OPERACAO: " TO cOP

    nResultado :=  Calcular(nValor1, nValor2, cOp)    //Todo o Case das opera�oes
            MostrarResultado(nResultado)      //Funcao apenas para fazer o trabalho do Qout, retornando o resultado do nResultado
        
        
RETURN NIL

FUNCTION LerNumero (cMensagem)
    
    LOCAL cValor
    LOCAL nValor

    ACCEPT cMensagem TO cValor


    nValor:=Val(cValor)

RETURN nValor   //Retorna o valor do cValor (qual digitamos no ACCEPT)


FUNCTION Calcular(nValor1, nValor2, cOp)
    
    LOCAL nResultado
    
    DO CASE
        CASE cOp = "+" 
             nResultado := nValor1 + nValor2
        CASE cOp = "-"
             nResultado := nValor1 - nValor2
        CASE cOp = "*"
             nResultado := nValor1 * nValor2
        CASE cOp = "/" 

             IF nValor2 == 0
                RETURN .F.
            ELSE
                nResultado := nValor1 / nValor2 
            ENDIF

        CASE cOp == "^"
            nResultado := nValor1 ^ nValor2
        CASE cOp == "R"
            nResultado := ((Sqrt(nvalor1)))
    END CASE
    
RETURN nResultado

FUNCTION MostrarResultado(nResultado)

    IF ValType(nResultado) == "N"
        QOut("RESULTADO: " + AllTrim(Str(nResultado)))
    ELSE
        QOut("ERRO: DIVISAO FEITO COM 0.")
    ENDIF

RETURN NIL
