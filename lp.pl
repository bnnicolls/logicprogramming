sum-up-numbers-simple([],0).           %base case
sum-up-numbers-simple(L,N) :-           %General Case
    L = [L1|L2],                        %Grabs First Item in List
    number(L1),                         %Check if Number
    sum-up-numbers-simple(L2, N1),      %Recursive Call (till last element in list)
    N is L1+N1.                       %returns sum of numbers in list
sum-up-numbers-simple(L,N) :-           %test case (if letter)
    L = [L1|L2],
    \+number(L1),                       %if not a number
    sum-up-numbers-simple(L2, N).       %continue recursive call



sum-up-numbers-general([], 0).          %same base case
sum-up-numbers-general(L,N) :-           %General Case
    L = [L1|L2],                        %Grabs First Item in List
    number(L1),                          %check if number
    sum-up-numbers-general(L2, N1),      %Recursive Call (till last element in list)
    N is L1+N1.                       %returns sum of numbers in list
sum-up-numbers-general(L,N) :-           %test case (if letter)
    L = [L1|L2],
    \+number(L1),                       %if not a number
    sum-up-numbers-general(L2, N).       %continue recursive call
sum-up-numbers-general(L, N) :-          %test case if list
    L = [L1|L2],                         %grab first element in list
    is_list(L1),                         %check if it's a list
    sum-up-numbers-general(L2, N1),      %add to sum
    N is L1+N1.

