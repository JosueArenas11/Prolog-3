-module(prime).
-export([is_prime/1]).

% Función principal: is_prime/1
is_prime(N) when N < 2 -> 
    false;
is_prime(2) -> 
    true;
is_prime(N) -> 
    not has_divisor(N, 2).

% Función auxiliar: has_divisor/2
has_divisor(N, D) when D * D > N -> 
    false;
has_divisor(N, D) when N rem D =:= 0 -> 
    true;
has_divisor(N, D) -> 
    has_divisor(N, D + 1).
