sum-up-numbers-simple([],0).           %base case
sum-up-numbers-simple(L,N) :-
    L = (L1|L2),                       %Grabs First Item in List
    sum-up-numbers-simple(L, N1),       %Recursive Call (till last element in list)
    N is L1.                            %returns sum of numbers in list
