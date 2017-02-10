sum-up-numbers-simple([],0). %base case
sum-up-numbers-simple(L,N) :-
    L is (L1, L|N).
