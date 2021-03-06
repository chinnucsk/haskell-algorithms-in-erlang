%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% original Haskell example code from
% Algorithms: A Functional Programming Approach
% Fethi Rabhi & Guy Lapalme, 
% Addison Wesley, 1999, ISBN 0201-59604-0
%
% Erlang translations by Stephen Wight, northwight@gmail.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% module S2_7_2 where

%% import Array

%% a' = array (1, 4) [(3, 'c'), (2, 'a'), (1, 'f'), (4, 'e')]

%% m = array ((1,1),(2,3)) [((i,j),(i*j)) | i<-[1..2], j<-[1..3]]

%% histogram (lower, upper) xs
%%     = updateHist (array (lower, upper) [(i, 0) | i <- [lower..upper]]) xs
          
%% updateHist a []     = a
%% updateHist a (x:xs) = updateHist (a // [(x, (a!x + 1))]) xs

	  
%% {----- Examples of evaluations and results

%% ? m
%% array ((1, 1), (2, 3)) [((1, 1), 1), ((1, 2), 2), ((1, 3), 3), ((2, 1), 2), ((2, 2), 4), ((2, 3), 6)]
%% ? m!(1,2)
%% 2
%% ? bounds m
%% ((1, 1), (2, 3))
%% ? indices m
%% [(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3)]
%% ? elems m
%% [1, 2, 3, 2, 4, 6]
%% ? assocs m
%% [((1, 1), 1), ((1, 2), 2), ((1, 3), 3), ((2, 1), 2), ((2, 2), 4), ((2, 3), 6)]
%% ? a' // [(3,'r')]
%% array (1, 4) [(1, 'f'), (2, 'a'), (3, 'r'), (4, 'e')]
%% ? m // [((1,1),4),((2,2),8)]
%% array ((1, 1), (2, 3)) [((1, 1), 4), ((1, 2), 2), ((1, 3), 3), ((2, 1), 2), ((2, 2), 8), ((2, 3), 6)]
%% ? histogram (0,9) [3,1,4,1,5,9,2]
%% array (0, 9) [(0, 0), (1, 2), (2, 1), (3, 1), (4, 1), (5, 1), (6, 0), (7, 0), (8, 0), (9, 1)]

%% -----}
