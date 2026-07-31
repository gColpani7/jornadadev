# Exercício 01 — AxCadastro × mBrowse

​A - Quando você usaria AxCadastro e quando usaria mBrowse? Dê um exemplo de cada.

Resposta: AxCadastro é ideal para um CRUD rápido e padrão, sem muita customização — bom para protótipos, cadastros auxiliares simples ou quando o tempo é curto (ex: um cadastro simples de Pets, como o STTIP001). mBrowse é usado quando preciso de controle fino sobre a tela: legendas coloridas, botões customizados, filtros, ou uma rotina que vai crescer com regras de negócio específicas (ex: STTIP002 com legendas e filtro do mês)

B - Cite três coisas que o mBrowse faz e o AxCadastro não faz.

Resposta:
01 - Legendas coloridas nas linhas do browse (aColors), destacando registros por condição.
02 - Botões customizados no aRotina (tipo 6), permitindo ações extras além do CRUD padrão (ex: botão "Interações", botão "Histórico").
03 - Filtro pré-definido (cFiltro) aplicado diretamente na exibição da lista, sem precisar de tela de pesquisa adicional.

​C - Na configuração de legendas (aColors), por que a regra ".T." deve ficar por último?

Resposta: ​A validação do array de legendas em AdvPL ocorre de forma sequencial (de cima para baixo). O interpretador testa a primeira condição; se ela for verdadeira, aplica a cor correspondente e interrompe a avaliação para aquele registro. ​Como a expressão ".T." (True) é sempre verdadeira, ela funciona como uma regra padrão / fallback (semelhante ao else ou default). Se for inserida no início do array, todas as condições subsequentes serão ignoradas, pois qualquer linha satisfará a primeira regra. Por isso, regras genéricas devem ser declaradas ao final.​

D - Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preencher o nome do cliente?

Resposta: O campo Virtual (com X3_RELACAO/POSICIONE) busca o dado em tempo real de outra tabela apenas para exibição, toda vez que a tela é montada, ele não é gravado e é recalculado a cada acesso. Já o gatilho (SX7) dispara no momento da digitação de um campo específico (ex: ao sair do campo CEP ou Cliente) e grava o valor resultante em um campo Real da própria tabela, que fica persistido no banco depois de salvo.