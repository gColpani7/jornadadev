FUNCTION Main ()

    LOCAL nNota01   := 0
    LOCAL nNota02   := 0
    LOCAL nNota03   := 0
    LOCAL nNota04   := 0
    LOCAL nMediaP   := 0

    Qout()
    Qout("===== CALCULO MEDIA PONDERADA =====")
    Qout()

    INPUT "Digite a primeira nota: " to nNota01
    INPUT "Digite a segunda nota: " to nNota02
    INPUT "Digite a terceira nota: " to nNota03
    INPUT "Digite a quarta nota: " to nNota04

    nMediaP := (nNota01*1+nNota02*2+nNota03*3+nNota04*4) / (1+2+3+4)

    Qout()
    Qout("===== RESULTADO MEDIA PONDERADA =====")
    Qout(" Media Ponderada:  " + Str(nMediaP,10, 2))

RETURN NIL
