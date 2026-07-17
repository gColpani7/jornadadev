FUNCTION Main()

    LOCAL cNome //nome caracteres
    LOCAL cData // data caracteres
    LOCAL cPreco // preco caracteres  
    LOCAL dNasc 
    LOCAL nPreco 
    LOCAL nIdade
    LOCAL nDesconto
    LOCAL nTotal

    QOUT("=== CALCULO DE DESCONTO ===")

    QOUT("")
    ACCEPT "Digite o seu nome: " TO cNome


    ACCEPT "Digite a data de nascimento (dd/mm/aaaa): " TO cData
    dNasc = CTOD(cData)

    ACCEPT "Digite o preco do produto: " TO cPreco
    nPreco = VAL(cPreco)

    nIdade = INT((DATE() - dNasc) / 365)

    IF nIdade > 60
        nDesconto = nPreco * 0.125
    ELSE
        nDesconto = 0
    ENDIF

    nTotal = nPreco - nDesconto

    QOUT("")
    QOUT("===== RESUMO DA COMPRA =====")
    QOUT("Cliente:   " + cNome)
    QOUT("Idade:     " + Alltrim(STR(nIdade,3)))
    QOUT("Preco: R$  " + Alltrim(STR(nPreco,10,2)))
    QOUT("Desconto: R$ " + Alltrim(STR(nDesconto,10,2)))
    QOUT("Total: R$  " + Alltrim(STR(nTotal,10,2)))

RETURN NIL