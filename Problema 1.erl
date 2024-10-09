-module(suma_tabla).
-export([imprimir_tabla/0]).

% Función principal que inicia la impresión de la tabla
imprimir_tabla() ->
    imprimir_tabla(1).

% Función recursiva para imprimir la tabla de sumar
imprimir_tabla(N) when N =< 12 ->
    imprimir_fila(N, 1),
    imprimir_tabla(N + 1);
imprimir_tabla(_) ->
    ok.

% Función para imprimir una fila de la tabla
imprimir_fila(N, M) when M =< 12 ->
    Sum = N + M,
    io:format("~w + ~w = ~w~n", [N, M, Sum]),
    imprimir_fila(N, M + 1);
imprimir_fila(_, _) ->
    ok.
