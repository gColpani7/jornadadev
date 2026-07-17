FUNCTION Main()

    LOCAL cExato    := "Harbour"
    LOCAL cParcial  := "Harb"

    QOut( cExato = cParcial) //Exibe .T. ( "=" Compara apenas o ínicio do conteudo.)

    QOut(cExato == cParcial) // Exibe .F. ("==" Compara o conteudo inteiro.)

RETURN NIL

