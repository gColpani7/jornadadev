FUNCTION main ()
    
    Local cNome := "Gabriel Colpani"
    Local cCidade := "Salto"
    Local cCurso := "Harbour/ADVPL"

    hb_cdpSelect("PT850")

    Qout ("=============================")
    Qout ("  FICHA DE APRESENTA��O")
    Qout ("=============================")
    Qout ("  Nome   : " + cNome)
    Qout ("  Cidade : " + cCidade)
    Qout ("  Curso  : " + cCurso)
    Qout ("=============================")
RETURN NIL