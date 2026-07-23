FUNCTION Main()

    LOCAL cJogador
    LOCAL cCPU
    LOCAL cResultado
    LOCAL cOpcao

    WHILE .T.
        
        Qout("===== JOKENPO: HOMEM X MAQUINA =====")
        Qout("     (pedra - papel - tesoura)      ")
        Qout("")
        ACCEPT "DIGITE SUA JOGADA: " TO cJogador
        cJogador := Upper(AllTrim(cJogador))

        IF !ValidarJogada(cJogador)
            Qout("ERRO, JOGADA INVALIDA.")
            LOOP    //LOOP faz voltar para o inicio
        ENDIF

        cCPU := SortearJogadaCPU()
        Qout("CPU JOGOU: " + cCPU)
        
        Qout("")
        cResultado := DefinirVencedor(cJogador, cCPU)
        Qout("RESULTADO: " + cResultado +" ")
        
        Qout("")
        ACCEPT "JOGAR NOVAMENTE (S/N)?" TO cOpcao
        IF Upper(AllTrim(cOpcao)) !="S"
            Qout("ATE LOGO :)")
            EXIT
        ENDIF
    ENDDO

RETURN NIL

FUNCTION ValidarJogada(cJogada)
    IF cJogada == "PEDRA" .OR. cJogada == "PAPEL" .OR. cJogada == "TESOURA"
        RETURN .T.
    ENDIF
RETURN .F.

FUNCTION SortearJogadaCPU()
    
    LOCAL nSorteio := HB_RandomInt(1, 3)

    IF nSorteio == 1
        RETURN "PEDRA"
    ELSEIF nSorteio == 2
        RETURN "PAPEL"
    ELSEIF nSorteio == 3
        RETURN "TESOURA" 
    ENDIF
RETURN ""

FUNCTION DefinirVencedor(cJogador, cCPU)

    IF cJogador == cCPU
        RETURN "EMPATE"
    ENDIF

    IF cJogador = "PEDRA" .AND. cCPU = "TESOURA"
        RETURN " VITORIA DO JOGADOR! "
    ELSEIF cJogador = "PAPEL" .AND. cCPU = "PEDRA"
        RETURN " VITORIA DO JOGADOR! "
    ELSEIF cJogador = "TESOURA" .AND. cCPU = "PAPEL"
    ELSE
        RETURN("VITORIA DO COMPUTADOR!")
    ENDIF
RETURN ""



