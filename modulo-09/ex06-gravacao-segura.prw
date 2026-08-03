#Include "Protheus.ch"

User Function STTIP003SALVAR()

    Local lOk      := .F.
    Local lTravou  := .F.
    Local oErro    := Nil
    Local cErro    := ""

    BeginTran()

    Begin Sequence

        // Validação do cliente
        If Empty(M->Z1_CLIENTE)
            Break("Cliente não informado.")
        EndIf

        // Validação do assunto
        If Empty(M->Z1_ASSUNTO)
            Break("Assunto não informado.")
        EndIf

        DbSelectArea("SZ1")

        // Tenta bloquear um novo registro para inclusão
        If !RecLock("SZ1", .T.)
            Break("Não foi possível bloquear a tabela para gravação.")
        EndIf

        lTravou := .T.

        SZ1->Z1_FILIAL  := xFilial("SZ1")
        SZ1->Z1_CODIGO  := M->Z1_CODIGO
        SZ1->Z1_CLIENTE := M->Z1_CLIENTE
        SZ1->Z1_ASSUNTO := M->Z1_ASSUNTO
        SZ1->Z1_LOJACLI := M->Z1_LOJACLI
        SZ1->Z1_NOME    := M->Z1_NOME
        SZ1->Z1_DATA    := Date()
        SZ1->Z1_HORA    := Time()

        SZ1->(MsUnlock())

        lTravou := .F.

        // Confirma depois de toda a gravação ocorrer corretamente
        CommitTran()

        lOk := .T.

    Recover Using oErro

        // Desbloqueia o registro caso o erro tenha ocorrido após o RecLock
        If lTravou
            SZ1->(MsUnlock())
            lTravou := .F.
        EndIf

        RollBackTran()

        // Break pode retornar string ou objeto de erro
        If ValType(oErro) == "O"
            cErro := oErro:Description
        Else
            cErro := CValToChar(oErro)
        EndIf

        U_GRAVARLOG("STTIP003SALVAR", oErro)

        MsgStop( ;
            "Não foi possível salvar o contato." + CRLF + ;
            cErro, ;
            "Erro" ;
        )

    End Sequence

Return lOk