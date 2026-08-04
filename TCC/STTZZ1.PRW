#Include "Protheus.ch"

/*/{Protheus.doc} STTZZ1
Rotina de manutenção da tabela ZZ1 - Controle de Fornecimento.

A rotina utiliza AxCadastro para disponibilizar as operações padrões
de consulta, inclusão, alteração e exclusão.

O quarto parâmetro do AxCadastro chama U_STZZ1OK(), responsável por:
- Validar se o fornecedor existe na SA2;
- Validar se a tolerância está entre 0 e 100;
- Tratar erros com BEGIN SEQUENCE e mensagem amigável.

@tipo       User Function
@dev        Gabriel Colpani
@data       03/08/2026
@version    1.0
/*/
User Function STTZZ1()

    Local aArea    := GetArea()
    Local cTitulo  := "Controle de Fornecimento"
    Local cVldExc  := ".T."
    Local cVldGrav := "U_STZZ1OK()"

    // Abre a manutenção padrão da tabela ZZ1.
    // cVldGrav é executado antes da confirmação da inclusão/alteração.
    AxCadastro("ZZ1", cTitulo, cVldExc, cVldGrav)

    RestArea(aArea)

Return Nil


/*/{Protheus.doc} STZZ1OK
Validação geral executada pelo AxCadastro antes da gravação.

O BEGIN SEQUENCE protege a etapa de validação que antecede a
gravação realizada pelo AxCadastro. Em caso de erro inesperado,
a rotina bloqueia a operação e exibe uma mensagem amigável.

@tipo       User Function
@return     Logical - .T. permite a gravação; .F. bloqueia
@dev        Gabriel Colpani
@data       03/08/2026
/*/
User Function STZZ1OK()

    Local lRet      := .T.
    Local oError
    Local cErroTec  := "Erro nao identificado."
    Local bOldError := ErrorBlock({|oError| Break(oError)})

    Begin Sequence

        // Valida a integridade referencial com o cadastro de fornecedores.
        lRet := ValFornec()

        // Somente continua se o fornecedor estiver correto.
        If lRet
            lRet := ValTolera()
        EndIf

    Recover Using oError

        lRet := .F.

        // Monta informação técnica somente para o console do AppServer.
        If ValType(oError) == "O"
            cErroTec := oError:Description
        ElseIf ValType(oError) == "C"
            cErroTec := oError
        EndIf

        ConOut("TCC STTZZ1 - Falha na validacao/gravacao: " + cErroTec)

        MsgStop( ;
            "Nao foi possivel concluir a gravacao do controle de fornecimento." + CRLF + ;
            "Revise os dados informados e tente novamente.", ;
            "Controle de Fornecimento" ;
        )

    End Sequence

    // Restaura o tratamento de erros anterior da thread.
    ErrorBlock(bOldError)

Return lRet


/*/{Protheus.doc} ValFornec
Valida se o codigo e a loja do fornecedor existem na tabela SA2.

A documentacao da ExistCpo orienta informar a expressao sem a filial.
O enunciado do TCC apresenta uma versao com xFilial("SA2").
Caso a avaliacao exija literalmente a expressao do enunciado,
consulte o comentario alternativo dentro desta funcao.

@tipo      Static Function
@return     Logical
/*/
Static Function ValFornec()

    Local lRet   := .T.
    Local cChave := ""

    If Empty(M->ZZ1_FORNEC) .Or. Empty(M->ZZ1_LOJAFO)

        MsgStop( ;
            "Informe o codigo e a loja do fornecedor.", ;
            "Fornecedor obrigatorio" ;
        )

        Return .F.

    EndIf

    cChave := M->ZZ1_FORNEC + M->ZZ1_LOJAFO

    // Versao adotada no fonte: chave sem filial.
    lRet := ExistCpo("SA2", cChave, 1)

    // Versao apresentada literalmente no enunciado:
    // lRet := ExistCpo("SA2", ;
    //     xFilial("SA2") + M->ZZ1_FORNEC + M->ZZ1_LOJAFO, 1)

    If !lRet

        MsgStop( ;
            "O fornecedor " + AllTrim(M->ZZ1_FORNEC) + ;
            " loja " + AllTrim(M->ZZ1_LOJAFO) + ;
            " nao existe no cadastro de fornecedores (SA2).", ;
            "Fornecedor invalido" ;
        )

    EndIf

Return lRet


/*/{Protheus.doc} ValTolera
Valida se a tolerancia esta entre 0 e 100.

@tipo       Static Function
@return     Logical
/*/
Static Function ValTolera()

    Local lRet := ;
        M->ZZ1_TOLERA >= 0 .And. ;
        M->ZZ1_TOLERA <= 100

    If !lRet

        MsgStop( ;
            "A tolerancia deve ser informada entre 0 e 100.", ;
            "Tolerancia invalida" ;
        )

    EndIf

Return lRet
