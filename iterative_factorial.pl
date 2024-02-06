% In Prolog, which is primarily a declarative language, the concept of iteration directly translate. 
% However, we can simulate iterative behavior using tail recursion.

factorial_iter(N, Result) :- 
    factorial_iter_helper(N, 1, Result).

factorial_iter_helper(0, Acc, Acc).
factorial_iter_helper(N, Acc, Result) :-
    N > 0,
    NextN is N - 1,
    NextAcc is Acc * N,
    factorial_iter_helper(NextN, NextAcc, Result).