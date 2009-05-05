#!/usr/bin/env escript
% vim:set ts=4 sw=4:

main(_) ->
	Filter = fun(X) -> ( eq_sum_digit_fact(X) ) end,
	Sum = lists:sum(lists:filter(Filter, lists:seq(10, 99999))),
	io:format("~w~n", [Sum]).

fact(0) -> 1;
fact(1) -> 1;
fact(2) -> 2;
fact(3) -> 6;
fact(4) -> 24;
fact(5) -> 120;
fact(6) -> 720;
fact(7) -> 5040;
fact(8) -> 40320;
fact(9) -> 362880.

eq_sum_digit_fact(X) -> eq_sum_digit_fact(X, X, 0).
eq_sum_digit_fact(X, N, Sum) when N < 10 -> X =:= (Sum + fact(N));
eq_sum_digit_fact(X, N, Sum) ->
	case ( Sum > X ) of
		true -> false;
		false -> eq_sum_digit_fact(X, N div 10, Sum + fact(N rem 10))
	end.

