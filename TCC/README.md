# TCC - Controle de Fornecimento ISO 9001

**Curso:** Do Zero ao Protheus (Harbour/ADVPL)

**Aluno:** Gabriel Colpani  

**Rotina principal:** `STTZZ1.PRW`

---

## 1. Descrição do projeto

Este projeto foi desenvolvido e estruturado sem acesso direto a um ambiente Protheus ativo. Portanto, a entrega contempla a modelagem completa do dicionário de dados, a documentação teórica das regras de negócio e a construção lógica integral dos fontes em AdvPL (.PRW), assegurando o rigor técnico e o cumprimento do núcleo mínimo exigido.

O sistema tem como objetivo gerenciar o Controle de Não Conformidades de Fornecedores de acordo com as diretrizes da norma ISO 9001, permitindo o acompanhamento de desvios, validação de fornecedores cadastrados e controle rigoroso de tolerâncias.

A solução utiliza a tabela customizada **ZZ1 - Controle de Fornecimento**, vinculada ao cadastro padrão de fornecedores do Protheus, tabela **SA2**.

---

## 2. Estrutura de arquivos

```text
TCC/
├── Dados-e-Dicionario/
│   ├── ZZ1_Campos.csv
│   └── ZZ1_Indices.csv
├── STTZZ1.PRW
└── README.md
```

---

## 3. Tabela ZZ1 - Controle de Fornecimento

**Acesso:** Compartilhado

| Título | Campo | Tipo | Tamanho | Decimais | Contexto |
|---|---|---:|---:|---:|---|
| Filial | ZZ1_FILIAL | C | 2 | 0 | Real |
| Código | ZZ1_CODIGO | C | 6 | 0 | Real |
| Cód. Fornecedor | ZZ1_FORNEC | C | 6 | 0 | Real |
| Loja Fornecedor | ZZ1_LOJAFO | C | 2 | 0 | Real |
| Nome Fornecedor | ZZ1_NOMEFO | C | 40 | 0 | Virtual |
| Dados Certificado | ZZ1_CERTIF | C | 256 | 0 | Real |
| Val. Certificado | ZZ1_VALCER | D | 8 | 0 | Real |
| Tolerância (%) | ZZ1_TOLERA | N | 5 | 2 | Real |
| Qtd. Conforme | ZZ1_TOTOK | N | 12 | 2 | Real |
| Qtd. Não Conforme | ZZ1_TOTNOK | N | 12 | 2 | Real |

### Campo virtual ZZ1_NOMEFO

O campo virtual busca o nome do fornecedor na tabela SA2:

```advpl
POSICIONE("SA2", 1, xFilial("SA2") + M->ZZ1_FORNEC + M->ZZ1_LOJAFO, "A2_NOME")
```

---

## 4. Índices da ZZ1

| Ordem | Expressão | Descrição |
|---:|---|---|
| 1 | `ZZ1_FILIAL + ZZ1_CODIGO` | Chave primária |
| 2 | `ZZ1_FILIAL + ZZ1_FORNEC + ZZ1_LOJAFO` | Pesquisa por fornecedor |
| 3 | `ZZ1_FILIAL + DTOS(ZZ1_VALCER)` | Pesquisa por validade do certificado |

---

## 5. Validações

### 5.1 Fornecedor

O código e a loja informados devem existir na tabela SA2.

Validação utilizada no fonte:

```advpl
ExistCpo("SA2", M->ZZ1_FORNEC + M->ZZ1_LOJAFO, 1)
```

### 5.2 Tolerância

A tolerância deve permanecer entre 0 e 100:

```advpl
M->ZZ1_TOLERA >= 0 .AND. M->ZZ1_TOLERA <= 100
```

---

## 6. Rotina STTZZ1

A rotina utiliza `AxCadastro()` para disponibilizar as operações padrões de manutenção da tabela ZZ1.

```advpl
AxCadastro("ZZ1", "Controle de Fornecimento", ".T.", "U_STZZ1OK()")
```

A função `U_STZZ1OK()` é executada ao confirmar uma inclusão ou alteração. Ela chama as validações antes de permitir que o `AxCadastro()` conclua a gravação.

---

## 7. Tratamento de erros

A validação executada antes da gravação está protegida por:

```advpl
BEGIN SEQUENCE
    // Validações
RECOVER USING oError
    // Mensagem
END SEQUENCE
```

Em caso de erro inesperado, o usuário recebe uma mensagem simples, sem exposição do erro técnico. O detalhe é enviado ao console do AppServer por meio de `ConOut()`.

---

## 8. Configuração sugerida no SX3

### ZZ1_FORNEC

```advpl
ExistCpo("SA2", M->ZZ1_FORNEC + M->ZZ1_LOJAFO, 1)
```

### ZZ1_TOLERA

```advpl
M->ZZ1_TOLERA >= 0 .AND. M->ZZ1_TOLERA <= 100
```

A validação também foi implementada no fonte para deixar a regra explícita e facilitar a avaliação do projeto.

---

## 9. Instalação e teste

1. Criar a tabela ZZ1 no Configurador, conforme `ZZ1_Campos.csv`.
2. Criar os três índices, conforme `ZZ1_Indices.csv`.
3. Configurar as validações no SX3.
4. Compilar o fonte `STTZZ1.PRW` no RPO.
5. Executar a função `U_STTZZ1()` pelo menu ou pelo ambiente de desenvolvimento.
6. Testar a inclusão com:
   - Fornecedor existente.
   - Fornecedor inexistente.
   - Tolerância menor que 0.
   - Tolerância maior que 100.
   - Tolerância válida entre 0 e 100.
