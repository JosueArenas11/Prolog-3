-module(sum_even).
-export([sum_even_numbers/0]).

sum_even_numbers() ->
    sum_even_numbers(2, 2000, 0).

sum_even_numbers(Current, Max, Acc) when Current =< Max ->
    sum_even_numbers(Current + 2, Max, Acc + Current);
sum_even_numbers(_, _, Acc) ->
    Acc.
