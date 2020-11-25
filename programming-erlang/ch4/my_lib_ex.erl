-module(my_lib_ex).
-export([my_date_string/0, my_time_func/1, my_tuple_to_list/1, say_hi/1]).

%---%
my_tuple_to_list(T) ->
	tuple_to_list_acc(T, tuple_size(T), []).

tuple_to_list_acc(_, 0, L) -> L;
tuple_to_list_acc(T, C, L) ->
	tuple_to_list_acc(T, C-1, [element(C, T)|L]).

%---%
my_time_func(F) ->
	{_,StartS,StartMS} = erlang:timestamp(),
	F(),
	{_,EndS,EndMS} = erlang:timestamp(),
	io:format("Time: ~.1f micro secs~n", [((EndS*1000000+EndMS)-(StartS*1000000+StartMS))/1000]).

say_hi(0) -> ok;
say_hi(T) -> io:format("hi~n"), say_hi(T-1).

%---%
month_number_to_text(1)  -> 'January';
month_number_to_text(2)  -> 'February';
month_number_to_text(3)  -> 'March';
month_number_to_text(4)  -> 'April';
month_number_to_text(5)  -> 'May';
month_number_to_text(6)  -> 'June';
month_number_to_text(7)  -> 'July';
month_number_to_text(8)  -> 'August';
month_number_to_text(9)  -> 'September';
month_number_to_text(10) -> 'October';
month_number_to_text(11) -> 'November';
month_number_to_text(12) -> 'December'.

my_date_string() ->
	{Year,Month_Numeric,Day} = date(),
	{Hours,Minutes,Seconds}  = time(),
	io:format("~s ~w, ~w ~w:~w:~w~n", [month_number_to_text(Month_Numeric), Day, Year, Hours, Minutes, Seconds]).
