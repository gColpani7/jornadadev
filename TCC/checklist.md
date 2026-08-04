## Dicionário

- [ ] Tabela ZZ1 criada ou documentada.
- [ ] Os 10 campos da ZZ1 foram conferidos.
- [ ] ZZ1_NOMEFO foi definido como campo virtual.
- [ ] Índice 1: `ZZ1_FILIAL + ZZ1_CODIGO`.
- [ ] Índice 2: `ZZ1_FILIAL + ZZ1_FORNEC + ZZ1_LOJAFO`.
- [ ] Índice 3: `ZZ1_FILIAL + DTOS(ZZ1_VALCER)`.

## Fonte

- [ ] `STTZZ1.PRW` está na raiz da entrega.
- [ ] A função principal se chama `User Function STTZZ1()`.
- [ ] A manutenção usa `AxCadastro()`.
- [ ] O fonte está comentado e indentado.

## Validações

- [ ] Fornecedor e loja são obrigatórios.
- [ ] Fornecedor é validado na SA2.
- [ ] Tolerância menor que 0 é bloqueada.
- [ ] Tolerância maior que 100 é bloqueada.
- [ ] Tolerância entre 0 e 100 é aceita.

## Tratamento de erros

- [ ] Existe um `BEGIN SEQUENCE`.
- [ ] Existe um `RECOVER USING`.
- [ ] A operação retorna `.F.` em caso de erro.
- [ ] O usuário recebe uma mensagem amigável.
- [ ] O erro técnico é registrado com `ConOut()`.