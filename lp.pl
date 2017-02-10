sum-up-numbers-simple([],0). %base case
sum-up-numbers-simple(L,N) :-
    L1 = (L1|N),              %Grabs First Item in List
    N is L1.
