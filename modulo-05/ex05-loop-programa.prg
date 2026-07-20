FUNCTION Main()

    LOCAL cNome
    LOCAL cMateria
    LOCAL cNota1
    LOCAL cNota2
    LOCAL nNota1
    LOCAL nNota2
    LOCAL nMedia
    LOCAL cResposta

    WHILE .T.

    ACCEPT "INFORME O NOME DO ALUNO: " TO cNome

    WHILE Empty(cNome) .OR. cNome == '0'
        Qout("NOME INVALIDO, TENTE NOVAMENTE!")
    ACCEPT "INFORME O NOME DO ALUNO: " TO cNome
    ENDDO
    
    ACCEPT "DIGITE A DISCIPLINA (EX: MAT)" TO cMateria

    WHILE Len(cMateria) <> 3 .OR. cMateria <> Upper(cMateria)
        Qout("UTILIZE O FORMATO DO EXEMPLO ACIMA")
    ACCEPT "DIGITE A DISCIPLINA (EX: MAT) " TO cMateria
    ENDDO

    ACCEPT "DIGITE A PRIMEIRA NOTA: " TO cNota1
    nNota1 :=Val(cNota1)

    WHILE nNota1 < 0 .OR. nNota1 > 10   
        Qout("NOTA INVALIDA!")
    ACCEPT "DIGITE A PRIMEIRA NOTA: " TO cNota1
    nNota1 :=Val(cNota1)     
    ENDDO

    ACCEPT "DIGITE A SEGUNDA NOTA: " TO cNota2
    nNota2 :=Val(cNota2)

    WHILE nNota2 < 0 .OR. nNota2 > 10   
        Qout("NOTA INVALIDA!")
    ACCEPT "DIGITE A SEGUNDA NOTA: " TO cNota2
    nNota2 :=Val(cNota2)     
    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    Qout("")
    Qout(" ==== RESUMO ESCOLAR ==== ")
    Qout("Nome: " + cNome)
    Qout("Disciplina " + cMateria)
    Qout("1a Nota: " +AllTrim(str(nNota1)))
    Qout("2a Nota: " +AllTrim(str(nNota2)))
    Qout("Media: " +AllTrim(str(nMedia)))


    ACCEPT "Deseja calcular outro? (S/N): " TO cResposta

    IF Upper(cResposta) <> "S"
    EXIT
    ENDIF
ENDDO



RETURN NIL