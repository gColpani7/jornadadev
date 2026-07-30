# Exercício 02 — A tabela ZA1 (Pets) que criamos em aula

A - Liste os campos da ZA1 (nome do campo, tipo, tamanho) — incluindo o campo de filial,
que é obrigatório em toda tabela do Protheus.

| Campo       | Tipo      | Tamanho |
|-------------|-----------|---------|
| ZA1_FILIAL  | Caracter  | 2       |
| ZA1_NOME    | Caracter  | 50      |
| ZA1_RACA    | Caracter  | 50      |
| ZA1_DATANC  | Data      | 8       |


B - Que índice faria sentido para a ZA1? Justifique (lembre da analogia da lista telefônica).

Resposta: Um índice que faria sentido seria ZA1_FILIAL + ZA1_NOME, porque ele organizaria os pets de cada filial pelo nome. Assim, o sistema conseguiria localizar um pet mais rapidamente.

C - Explique por que o prefixo da tabela é Z (o que esse prefixo significa em termos de convenção do Protheus).

Resposta: O prefixo Z é no Protheus, serve para nomear as tabelas customizadas, criadas para necessidades específicas do cliente. Assim, elas são diferenciadas das tabelas padrão que já vêm no sistema.

D - Explique por que os campos começam com ZA1_ (ex: ZA1_NOME , ZA1_RACA ) e não apenas com o nome do campo solto.

Resposta: Os campos começam com ZA1_ porque identifica que eles pertencem à tabela. Assim, evita confusão com campos de outras tabelas e segue o padrão do Protheus.