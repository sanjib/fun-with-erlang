-module(shop1).
-export([test/0, total/1]).

test() ->
	Buy = [{oranges,4},{newspaper,1},{apples,10},{pears,6},{milk,3}],
	123 = total(Buy),
	test_worked.

total([{What, N}|T]) -> shop:cost(What) * N + total(T);
total([])            -> 0.
