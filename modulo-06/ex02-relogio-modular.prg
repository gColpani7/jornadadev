FUNCTION Main()

   LOCAL nI     //contador
   LOCAL cHora 
   LOCAL cHoraFormatada

   FOR nI := 1 TO 30

    cHora :=ObterHora()
    cHoraFormatada := FormatarHora(cHora)
    ExibirHora (cHoraFormatada)
    Inkey(1)    //usado para finalizar ao contar 30x (30 segundos)

   NEXT

   QOUT("Tempo Esgotado!")
RETURN NIL

FUNCTION ObterHora()    // retorna a hora atual
RETURN Time()

FUNCTION FormatarHora (cHora)   // devolve a str formatada
RETURN "Hora atual: " + cHora

FUNCTION ExibirHora (cHora)
    QQOUT( Chr(13) + cHora )    // QQOUT para atualizar texto sem pular linha
RETURN NIL
