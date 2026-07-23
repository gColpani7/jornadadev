FUNCTION Main

    LOCAL aNumeros := {}
    LOCAL nI := 0


    QOut("===== BUBBLE SORT =====")
    Qout("")
    FOR nI := 1 TO 10
        AADD(aNumeros, hb_RandomInt(1,10))     //Adc a array dos numeros em uma lista de numeros aleatorios 
    NEXT
    
    QOut("Sequencia Aleatoria: ")
    QOut ("")
    
    FOR nI := 1 TO Len(aNumeros)
        QQout(AllTrim(Str(aNumeros[nI])) + " " )    //Qout para criar a ordem aleatoria (de 1 a 10)
    NEXT

    Qout("")
    BubbleSort(aNumeros)   
  
    Qout("Sequencia em ondem crescente: ")
    Qout("")
    FOR nI := 1 TO len(aNumeros)
        QQout(AllTrim(str(aNumeros[nI])) + " ")     
    NEXT

RETURN NIL

FUNCTION BubbleSort(aVetor)
    
    LOCAL nI := 0
    LOCAL nJ := 0
    LOCAL nTemp := 0
    LOCAL nTamanho := Len(aVetor)

    FOR nI := 1 TO nTamanho -1

        FOR nJ := 1 TO nTamanho - nI

            IF aVetor[nJ] > aVetor [nJ + 1]

                nTemp := aVetor[nJ]
                aVetor[nJ] := aVetor[nJ + 1]
                aVetor[nJ + 1] := nTemp
            ENDIF
        NEXT
    NEXT
    
RETURN NIL