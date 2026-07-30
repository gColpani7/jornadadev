# Exercício 01 — Conceitos fundamentais

A - Qual é a função do AppServer?

Resposta: O AppServer é o servidor de aplicação responsavel por executar o sistema Protheus. Ele processa os códigos e as regras do sistema, além de fazer a comunicação com o banco de dados.

B - O que é o RPO?

Resposta: O RPO é o repositório onde ficam armazenados os programas ADVPL já compilados (rotinas padrões e customizadas). O AppServer acessa esse repositório para executar as rotinas do Protheus.

C - Para que serve o Configurador (SIGACFG)?

Resposta: O SIGACFG serve para configurar o Protheus e administrar o ambiente. Por meio dele podemos criar tabelas e campos, parametros e gatilhos, alterar propriedades, definir obrigatoriedades e permissões.

D - Qual a diferença entre campo Real e campo Virtual no SX3?

Resposta: O campo Real existe fisicamente na estrutura da tabela e seu conteúdo fica armazenado no banco de dados. Já o campo Virtual é definido no dicionário de dados e aparece no sistema, mas não é gravado fisicamente na tabela. Seu valor normalmente é calculado ou obtido durante a execução da rotina, por meio de uma expressão, função ou relacionamento.