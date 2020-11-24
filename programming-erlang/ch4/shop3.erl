-module(shop3).
-export([total/1]).
-import(lists, [map/2, sum/1]).

total(L) ->
	sum([shop:cost(What)*N || {What,N} <- L]).