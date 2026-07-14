FUNCTION main ()
    
    Local cNome := "Gabriel Colpani"
    Local cCidade := "Salto"
    Local cCurso := "Harbour/ADVPL"
    Local cData := DToc(date())
    Local cHora := Time()

    hb_cdpSelect( "PT850" )
    hb_langSelect( "PT" )

    Qout ("=============================")
    Qout ("   FICHA DE APRESENTA€ÇO     ")
    Qout ("=============================")
    Qout ("  Nome   : " + cNome)
    Qout ("  Cidade : " + cCidade)
    Qout ("  Curso  : " + cCurso)
    Qout ("  Data   : " + cData)
    Qout ("  Hora   : " + cHora)
    Qout ("=============================")
RETURN NIL