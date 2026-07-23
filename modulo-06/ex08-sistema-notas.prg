FUNCTION Main()
    LOCAL nQtd := 0
    LOCAL cEntrada := ""
    LOCAL aAlunos := {} 
    LOCAL nI := 0
    LOCAL cNome := ""
    LOCAL nN1 := 0, nN2 := 0, nN3 := 0, nN4 := 0
    LOCAL nMedia := 0
    
    //quantidade de alunos
    ACCEPT "Digite a quantidade de alunos: " TO cEntrada
    nQtd := Val(cEntrada)

    //Loop dados de cada aluno
    FOR nI := 1 TO nQtd
        QOut("")
        QOut("Dados do Aluno " + AllTrim(Str(nI)))

        ACCEPT "Digite o nome: " TO cNome
        Qout("")
        ACCEPT "Digite a nota: " TO cEntrada
        nN1 := Val(cEntrada)
        
        ACCEPT "Digite a nota: " TO cEntrada
        nN2 := Val(cEntrada)
        
        ACCEPT "Digite a nota: " TO cEntrada
        nN3 := Val(cEntrada)
        
        ACCEPT "Digite a nota: " TO cEntrada
        nN4 := Val(cEntrada)

        AAdd(aAlunos, {cNome, nN1, nN2, nN3, nN4})
    NEXT

    QOut("==== BOLETIM FINAL ====" )

    FOR nI := 1 TO Len(aAlunos)     
        
        cNome := aAlunos[nI][1]     //1: Nome -  2 a 5: Notas
        
        nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4

        QOut("")
        QOut("Aluno: " + cNome)
        QOut("Media: " + AllTrim(Str(nMedia, 5, 2)))
        
        // Verifica A/R
        IF nMedia >= 7
            QOut("APROVADO")
        ELSE
            QOut("REPROVADO")
        ENDIF
    NEXT



RETURN NIL