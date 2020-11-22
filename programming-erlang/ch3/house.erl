-module(house).
-export([
	all_houses/0,
	who_lives_at_221_baker_st/0,
	how_many_bedrooms_dr_watson/0, 
	color_of_mrs_hudson_house/0]).

all_houses() ->
	H1 = {house,{color,gray},
				{bedrooms,6},
				{garage,false},
				{who_lives,"Sherlock Holmes"},
				{address,"221 Baker St"}},
	H2 = {house,{color,red},
				{bedrooms,4},
				{garage,false},
				{who_lives,"Dr. Watson"},
				{address,"222 Baker St"}},
	H3 = {house,{color,white},
				{bedrooms,2},
				{garage,true},
				{who_lives,"Mrs. Hudson"},
				{address,"223 Baker St"}},
	[H1,H2,H3].

who_lives_at_221_baker_st()->
	[{_,_,_,_,{_,Name},_} | _] = all_houses(),
	Name.

how_many_bedrooms_dr_watson()->
	[_ | [{_,_,{_,Bedrooms},_,{_,"Dr. Watson"},_} | _]] = all_houses(),
	Bedrooms.

color_of_mrs_hudson_house()->
	[_ | [_ | [{_,{_,Color},_,_,_,_}]]] = all_houses(),
	Color.
