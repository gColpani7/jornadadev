FUNCTION Main()

LOCAL aNum  := Array(10)
LOCAL nI := 0
LOCAL cValor
LOCAL nValor
LOCAL nSoma  := 0
LOCAL nMedia := 0
LOCAL nMenor := 0
LOCAL nMaior := 0





FOR nI := 1 TO 10

    ACCEPT "ESCOLHA UM NUMERO: " TO Cvalor

    //aNum[nI] := nValor
    nValor   := Val(cValor)
    aNum[nI] :=nValor
NEXT

ASort(aNum)

FOR nI := 1 TO Len(aNum)
    nSoma += aNum[nI]
NEXT

nMedia := nSoma / Len(aNum)
nMenor := aNum[1]
nMaior := aNum[Len(aNum)]

FOR nI := 1 TO Len(aNum)
    Qout(aNum[nI])
NEXT

    QOut("")
    QOut("Soma:  " + AllTrim(Str(nSoma)))
    QOut("Media: " + AllTrim(Str(nMedia)))
    QOut("Menor: " + AllTrim(Str(nMenor)))
    QOut("Maior: " + AllTrim(Str(nMaior)))


RETURN NIL