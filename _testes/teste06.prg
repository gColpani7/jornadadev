FUNCTION Main()
   LOCAL cNome
   LOCAL nIdade
   LOCAL Nvalor1
   LOCAL Nvalor2

   // ACCEPT lê uma string
   //ACCEPT "Digite seu nome: " TO cNome

   // INPUT lê um valor (número, string, data, lógico)
   //INPUT "Digite sua idade: " TO nIdade

   INPUT "Digite o primeiro valor: " TO Nvalor1
   INPUT "Digite o segundo valor: " TO Nvalor2

   Qout("A soma dos valores e: " + Alltrim(Str(Nvalor1 + Nvalor2)))

   //QOut("Olá, " + cNome + "!")
   //QOut("Você tem " + Alltrim(Str(nIdade)) + " anos.")

RETURN NIL
