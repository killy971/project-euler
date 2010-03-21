#!/usr/bin/env escript
% vim:set ts=4 sw=4:

main(_) ->
	Square = fun(X) -> ( X * X ) end,
	SquareSum = lists:sum(lists:map(Square, lists:seq(1, 100))),
	SumSquare = Square(lists:sum(lists:seq(1, 100))),
	io:format("~w~n", [SumSquare - SquareSum]).
