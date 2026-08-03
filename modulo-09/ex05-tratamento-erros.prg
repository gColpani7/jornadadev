FUNCTION Main()

    LOCAL nA := 10, nB := 0, nRes
    LOCAL bOldError, oErro

    bOldError := ErrorBlock( { |oErr| Break( oErr ) } )

    BEGIN SEQUENCE
        nRes := nA / nB
        QOut("Resultado: " + Str(nRes))
        
    RECOVER USING oErro
        QOut("ERRO: " + oErro:Description)
    END SEQUENCE

    ErrorBlock( bOldError )

    QOut("O programa continua de pé!")
RETURN NIL