FUNCTION Main()    
    local cItem := ""
    local nPrecoItem := 0
    local aCarrinho := {}
    local aItem := {}
    local nTotal := 0

    do while .T.
        ACCEPT "DIGITE O PRODUTO OU '0' PARA FINALIZAR: " TO cItem

        if cItem == "0"
            exit
        endif

        ACCEPT "VALOR DO PRODUTO: " TO nPrecoItem

        AAdd(aCarrinho, { cItem, nPrecoItem })
    enddo

    QOut("")
    QOut("===== RESUMO DA COMPRA =====")
    QOut("")
    QOut("LISTA DE PRODUTOS: ")    
    
    for each aItem in aCarrinho
        QOut(aItem[1])
        nTotal += Val(aItem[2])
    next

    QOut("")
    QOut("QUANTIDADE DE ITENS: " + FormatarValorNtoC(len(aCarrinho)))
    QOut("TOTAL: " + FormatarValorN(nTotal))
    QOut("")
RETURN NIL

function FormatarValorN(nValor)
return AllTrim(Str(nValor, 10,2))

function FormatarValorNtoC(nValor)
return AllTrim(Str(nValor, 10,0))