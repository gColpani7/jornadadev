FUNCTION Main()

    SET PROCEDURE TO matematica.prg

    Qout("")
    Qout("==== TESTE BIBLIOTECA MATEMATICA ====")
    Qout("")
    Qout("Fatorial do Numero 5: ", LTrim(str(FatorialN(5))))
    Qout("Fatorial do Numero 3: ", LTrim(str(FatorialN(3))))
    Qout("-------------------------------------")
    Qout("Numero 7 e primo?: ", (EhPrimo(7)))
    Qout("Numero 1 e primo?: ", (EhPrimo(1)))
    Qout("-------------------------------------")
    Qout("MDC de 15 e 23: ", LTrim(str(MDC(15,23))))
    Qout("MMC de 14 e 32: ", LTrim(str(MMC(14,32))))
RETURN NIL


//AllTrim(Str(nMedia, 5, 2)))