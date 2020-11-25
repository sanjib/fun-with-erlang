-module(geometry).
-export([area/1, peri/1]).

area({circle, Radius})           -> math:pi()*Radius*Radius;
area({rectangle, Width, Height}) -> Width * Height;
area({triangle_right, A, B})     -> (A*B)/2;
area({square, Side})             -> Side * Side.

peri({circle,R})       -> 2*math:pi()*R;
peri({quad,A,B,C,D})   -> A+B+C+D;
peri({rect,A,B})       -> (A+B)*2;
peri({square, A})      -> A*4;
peri({triangle,A,B,C}) -> A+B+C.