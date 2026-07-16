# Exercício 3 - Fluxograma

```mermaid
flowchart TD
    %% Início com forma oval
    A([Início]) --> B
    
    %% Entradas com paralelogramo
    B[/Leia Valor/] --> C
    
    %% Decisão com Losango
    C{Valor > 100?}
    
    %% Processos com retângulo
    C -- Sim --> D[Desconto = Valor * 0.10]
    C -- Não --> E[Desconto = 0]
    
    %% Fim Fluxo
    D --> F
    E --> F
    F[Total = Valor - Desconto] --> G
    
    %% Saída e Fim
    G[/Escreva Total/] --> H([Fim])
