FUNCTION Main()

LOCAL n1 := 0

// 1 ~ 100
Qout(" SEQUENCIA DE 1 A 100: ")

FOR n1 := 1 TO 100
    Qout("Numero: " + AllTrim(str(n1)))
     hb_idleSleep(0.1) //controla o clock da execução para exibir todas as iterações corretamente no terminal.
NEXT
Qout("")

// -50 ~ 50
Qout(" SEQUENCIA DE -50 A 50: ")

FOR n1 := -50 TO 50
    Qout("Numero: " + AllTrim(str(n1)))
     hb_idleSleep(0.1) //controla o clock da execução para exibir todas as iterações corretamente no terminal.
NEXT
Qout("")


// 80 a 5 em ordem decrescente, usando STEP -1
Qout(" SEQUENCIA DE 80 A 5: ")

FOR n1 := 80 TO 5 STEP -1 
    Qout("Numero: " + AllTrim(str(n1)))
     hb_idleSleep(0.1) //controla o clock da execução para exibir todas as iterações corretamente no terminal.
NEXT
Qout("")

RETURN NIL