FUNCTION Main ()

    LOCAL cNome         := "Gabriel Colpani"
    LOCAL nSalario      := 7450.00
    LOCAL lAtivo        := .T.
    LOCAL dDataAdmissao := CTOD("01/08/2024")
    LOCAL cDepto        := "TI"

    Qout(" ===== INFORMACOES DO COLABORADOR =====")
    Qout("Nome:              " + cNome)
    Qout("Salario:        " + Str(nSalario,10,2))
    Qout("Ativo:             " + iif(lAtivo, "Sim", "Nao")) // Funcao IIF foi compartilhada por uma colega da turma.
    Qout("Adimissao:         " + dTOC(dDataAdmissao))
    Qout("Codigo do Depto:   " + Cdepto)


RETURN NIL 