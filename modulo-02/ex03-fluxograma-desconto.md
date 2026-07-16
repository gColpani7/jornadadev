graph TD
    %% Início e fim com forma oval
    A([Início]) --> B
    H([Fim])
    
    %% Entradas e saídas com paralelogramo
    B[/Leia Valor/] --> C
    G[/Escreva Total/] --> H
    
    %% Decisão com Losango
    C{Valor > 100?}
    
    %% Processos com retângulo
    C -- Sim --> D[Desconto = Valor * 0.10]
    C -- Não --> E[Desconto = 0]
    
    %% Fim Fluxo
    D --> F
    E --> F
    F[Total = Valor - Desconto] --> G