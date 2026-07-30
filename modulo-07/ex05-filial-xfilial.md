# Exercício 05 - A1-FILIAL e xFilial()

​A - Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus, incluindo a ZA1 que criamos, precisa de um campo de filial)?

Resposta: O campo de filial existe para garantir a arquitetura multiempresa e multifilial do Protheus, isolando ou compartilhando os dados de cada unidade de negócio. Ele é indispensável em todas as tabelas para que o sistema saiba a qual filial pertence cada registro e consiga aplicar corretamente as regras de compartilhamento (exclusivo ou compartilhado) definidas no SX2/Dicionário de Dados.

​B. O que a função xFilial() tem a ver com isso? O que aconteceria se um programa "escrevesse a filial na mão" em vez de usar xFilial()?

R: A função xFilial("Tabela") retorna dinamicamente qual valor de filial deve ser gravado ou buscado no banco de dados, respeitando o modo de compartilhamento da tabela e a filial logada no momento. Se um programa fixar o código da filial manualmente (ex: "01"), a aplicação quebrará o conceito de compartilhamento do Protheus, podendo gerar duplicidade de chaves, inconsistência de dados ou gravação incorreta em ambientes onde a tabela é compartilhada (vazia) ou possui filial com tamanho/formato diferente.