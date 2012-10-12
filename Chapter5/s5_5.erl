%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% original Haskell example code from
% Algorithms: A Functional Programming Approach
% Fethi Rabhi & Guy Lapalme, 
% Addison Wesley, 1999, ISBN 0201-59604-0
%
% Erlang translations by Stephen Wight, northwight@gmail.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% module S5_5 where
%% import Set
-module(s5_5).
-import(set, [emptySet/0, setEmpty/1, inSet/2, addSet/2, delSet/2]).
-export([s1/0, s2/0, v/0, t1/0, t2/0, t3/0]).

% s = foldr addSet emptySet [2,5,1,3,7,5,3,2,1,9,0]
% v = delSet 1 s, inSet 8 s, inSet 0 s)
% s' = foldr addSet emptySet [2,5,3,3,2,5,1]
s1() -> lists:foldr(fun set:addSet/2, emptySet(), [2,5,1,3,7,5,3,2,1,9,0]).
v() -> {delSet(1, s5_5:s1()), inSet(8, s5_5:s1()), inSet(0, s5_5:s1())}.
s2() -> lists:foldr(fun set:addSet/2, emptySet(), [2,5,3,3,2,5,1]).

t1() -> delSet(3, addSet(3, emptySet())).
t2() -> setEmpty(s2()).
t3() -> setEmpty(delSet(3, addSet(3, emptySet()))).

% {- examples of evaluations and results
% ? s1().
% {0,1,2,3,5,7,9}
% ? s2().
% {1,2,3,5}
% ? v().
% ({0,2,3,5,7,9}, False, True)
% ? t1().
% {}
% ? t2().
% False
% ? t3().
% True
% -}
