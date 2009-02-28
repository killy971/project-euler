% vim:set ts=4 sw=4:
% swipl -L64M -G128M -o 076prolog -O -g 'start' -c 076.pl

start:- partitionCount(100, L, 0), write(C), nl, halt.

partitionCount(N,P,_) :-
	retractall(myCounter/1),
	assert(myCounter(0)),
	partition(N,P),
	partitionIncFail.
partitionCount(_,_,X) :-
	myCounter(X).

partitionIncFail :-
	retract(myCounter(I)),
	J is I+1,
	assert(myCounter(J)),
	fail. 

% partition(N, Partition) is true if Partition is a partition of the integer N.
%   On backtracking, all partitions will be found, in reverse co-lexicographic
%   order.
% e.g. findall(X, partition(25, X), Xs)
%   gives Xs = [[5], [1,4], [2,3], [1,1,3], [1,2,2], [1,1,1,2], [1,1,1,1,1]]
partition(1, [1]):-!.
partition(N, Partition):-
	N > 1,
	partition_1([N], 0, _, Partition).

% e.g. findall(X, partition_1([5], 0, _, X), Xs)
%   gives Xs = [[5], [1,4], [2,3], [1,1,3], [1,2,2], [1,1,1,2], [1,1,1,1,1]]
partition_1([N], 0, 0, [N]).
partition_1(As, M0, M, Partition):-
	next_partition(As, M0, M, Bs),
	% A Partition consists of M ones followed by the elements of Bs
	prepend_ones(M, Bs, Partition).
	partition_1(As, M0, M, Partition):-
	next_partition(As, M0, M1, Bs),
	partition_1(Bs, M1, M, Partition).

% Finds the next partition.  
% e.g. next_partition([2,5], 1, M, As) gives M=3, As=[5]
%   that is, the partition after [1,2,5] is [1,1,1,5]
% e.g. next_partition([3,3], 2, M, As) gives M=1, As=[2,2,3]
%   that is, the partition after [1,1,3,3] is [1,2,2,3]
% e.g. next_partition([3,4], 1, M, As) gives M=0, As=[2,2,4]
%   that is, the partition after [1,3,4] is [2,2,4]
next_partition([2|As], M0, M, As):-!,
	% The easy case: Increase number of leading ones by 2, and remove 2 from As
	M is M0 + 2.
next_partition([X1|As], M0, M, Bs):-
	% The harder case:
	X is X1 - 1,
	N is X1 + M0,
next_partition_1(N, X, M0, As, M, Bs).

% next_partition_1(N, X, M0, As, M, Bs) is true if Bs is the result of
%   prepending I occurrences of X to As preceded by J if J > 1, and
%   M = M0 + [J = 1], where I = N div X and J = N mod X.
% e.g. next_partition_1(5, 2, 2, [3], M, Bs) gives M = 1, Bs = [2,2,3]
next_partition_1(N, _, _, As, N, As):-
	% 0 <= N <= 1: There are N leading ones, and As is unchanged
	N < 2, !.
	next_partition_1(N, X, _, As, 0, [N|As]):-
	% 2 <= N < X: There are no leading ones, and N is prepended to As
	N < X, !.
next_partition_1(N, X, M0, As, M, Bs):-
	% N >= X: The number of leading ones is unchanged, and X is prepended to As
	N1 is N - X,
	next_partition_1(N1, X, M0, [X|As], M, Bs).

% prepend_ones(N, Xs, Ys) is true if Ys is the result of prepending N ones
%   to the elements of Xs.
% e.g. prepend_ones(3, [2, 3], Ys) gives Ys = [1,1,1,2,3]
prepend_ones(0, Xs, Xs):-!.
prepend_ones(N, Xs, [1|Ys]):-
	N1 is N - 1,
	prepend_ones(N1, Xs, Ys).
