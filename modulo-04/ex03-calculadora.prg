FUNCTION Main()

LOCAL cValor1
LOCAL cValor2

LOCAL nValor1
LOCAL nValor2

LOCAL cOp

ACCEPT "DIGITE O PRIMEIRO VALOR: " TO cValor1
ACCEPT "DIGITE O SEGUNDO VALOR: " TO cValor2

nValor1 :=Val(cValor1)
nValor2 :=Val(cValor2)

Qout("OPERACOES VALIDAS: +(Soma), -(Sub), *(Mult), /(Div), ^(Potencia), R(Raiz Quadrada)")

ACCEPT "DIGITE A OPERACAO: " TO cOp

DO CASE
    CASE cOp == "+"
        Qout("RESULTADO: " + AllTrim (Str(nValor1+nValor2)))

     CASE cOp == "-"
        Qout("RESULTADO: " + AllTrim (Str(nValor1-nValor2)))

     CASE cOp == "*"
        Qout("RESULTADO: " + AllTrim (Str(nValor1*nValor2)))

     CASE cOp == "/"

        IF nValor2 == 0
            Qout("ERRO: NAO E POSSIVEL DIVISAO POR ZERO")
        ELSE
            Qout("RESULTADO: " + AllTrim (Str(nValor1/nValor2)))
        ENDIF

     CASE cOp == "^"
        Qout("RESULTADO: " + AllTrim (Str(nValor1^nValor2)))

     CASE cOp == "R"
        Qout("RESULTADO: " + AllTrim (Str(Sqrt(nvalor1))))

    OTHERWISE
        Qout("ERRO: APENAS OPERACOES +, -, *, /, ^ ou R. SAO VALIDAS")


ENDCASE            

RETURN NIL