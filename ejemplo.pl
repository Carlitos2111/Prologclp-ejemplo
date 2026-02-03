:- use_module(library(clpfd)).

% Predicado que define las restricciones
problema(X, Y) :-
    X in 1..20,       % dominio de X
    Y in 1..20,       % dominio de Y
    X #> 5,           % restricción de comparación
    X #= Y + 3,       % restricción de igualdad
    Y #\= X,          % restricción de desigualdad
    X + Y #=< 37,     % restricción matemática
    labeling([], [X, Y]).  % busca valores que cumplan todo