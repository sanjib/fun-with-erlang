-module(math_functions).
-export([even/1, odd/1, filter/2, split/1, split2/1]).

even(X) -> X rem 2 =:= 0.
odd(X)  -> X rem 2 =/= 0.

% -- Example -- %
% > L = [1,2,3,4,5].
% [1,2,3,4,5]
% > F = fun(X) -> X rem 2 =:= 0 end.
% #Fun<erl_eval.44.97283095>
% > math_functions:filter(F,L).
% [2,4]
filter(F, L) ->
	[X || X <- L, F(X) =:= true].

split(L) ->
	Even = filter(fun(X) -> X rem 2 =:= 0 end, L),
	Odd  = filter(fun(X) -> X rem 2 =:= 1 end, L),
	{Even, Odd}.

split2(L) ->
	split2_acc(L, [], []).

split2_acc([], Odds, Evens) -> {lists:reverse(Evens), lists:reverse(Odds)};
split2_acc([H|T], Odds, Evens) ->
	case H rem 2 of
		1 -> split2_acc(T, [H|Odds], Evens);
		0 -> split2_acc(T, Odds, [H|Evens])
	end.
