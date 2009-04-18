#!/opt/local/bin/escript
% vim:set ts=4 sw=4:

main(_) ->
	Divides = fun(X, D) -> ( X rem D =:= 0 ) end,
	Filter = fun(X) -> ( Divides(X, 3) or Divides(X, 5) ) end,
	Sum = lists:sum(lists:filter(Filter, lists:seq(1, 999))),
	io:format("~w~n", [Sum]).
