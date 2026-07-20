FUNCTION Main ()

    LOCAL cPalpite := ""
    LOCAL nPalpite := 0
    LOCAL nNumSecreto := 0
    LOCAL nTentativa := 0

    // hb_RandomInt - Funcao para realizar o sorteio de numero de 1 a 100

    nNumSecreto := hb_RandomInt (1, 100)

    Qout(" ==== ADIVINHE O NUMERO ====")
    Qout("ADIVINHE UM NUMERO DE 1 A 100.")
    Qout("EM APENAS 7 TENTATIVAS.")
    Qout("")

    FOR nTentativa := 1 TO 7 // numeros de tentativas

        ACCEPT "DIGITE SEU PALPITE: " TO cPalpite
        nPalpite :=Val(cPalpite)
     
        IF nPalpite ==nNumSecreto // acertou o numero, imprime a msg a baixo

        Qout("PARABENS, VOCE ACERTOU O NUMERO SECRETO")
        Qout("VOCE UTILIZOU: " +LTrim(str(nTentativa)))
    EXIT

     ELSEIF nPalpite < nNumSecreto

         QOut("O NUMERO SECRETO E MAIOR.")

      ELSE

         QOut("O NUMERO SECRETO E MENOR.")

      ENDIF

      QOut("TENTATIVAS " + LTrim(Str(nTentativa)) + " DE 7")
      QOut("")

   NEXT

   IF nPalpite <> nNumSecreto  //mensagem de erro, caso utilize todas as 7 tentativas

      QOut(" ===== GAME OVER =====")
      QOut("VOCE UTILIZOU TODAS AS TENTATIVAS!")
      QOut("NUMERO SECRETO: " + LTrim(Str(nNumSecreto)))

   ENDIF

RETURN NIL
