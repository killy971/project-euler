#!/usr/bin/env escript
% vim:set ts=4 sw=4:

main(_) ->
	Even = fun(X) -> ( X rem 2 =:= 0 ) end,
	EvenFib = lists:filter(Even, fibonacci(4000000)),
	io:format("~w~n", [lists:sum(EvenFib)]).

fibonacci(Max) -> fibonacci(Max, [1, 0]).
fibonacci(Max, [H|T]) when H > Max -> T;
fibonacci(Max, List) ->
	[H1|T] = List, [H2|_] = T,
	fibonacci(Max, [H1+H2|List]).
