FUNCTION Main ()

    LOCAL nNumero := 50
    LOCAL cTexto := ""
    LOCAL dData := Date()
   
SET DATE FORMAT TO "DD/MM/YYYY"

    Qout("TEXTO: " + cTexto)
    Qout("NUMERO: " + alltrim(str(nNumero)))
    Qout("DATA: " + dtoc(dData))

RETURN NIL