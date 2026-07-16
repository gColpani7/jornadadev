FUNCTION Main()

    LOCAL nIdade := 50
    LOCAL lAtivo := .F.

    IF (nIdade > 60 .AND. lAtivo)
        Qout("idosa idade e ativo")
    endif

    if (nIdade < 18 .OR. !lAtivo)
        Qout("Menor nao idade ou inativo")
    endif

RETURN NIL

