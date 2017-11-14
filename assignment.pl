%Definitions for isElementInList(El, List)
isElementInList(El, [El|Tail]).
      isElementInList(El, [Head|Tail]):-
              isElementInList(El, Tail).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], L, L).
 mergeLists([Top|Tail],L,[Top|Bottom]):-
    mergeLists(Tail, L, Bottom).

%Definitions for reverseList(List, ReversedList)
reverseList(L, Rev):-
  reverseList(L, Rev, []).
    reverseList([], L, L).
      reverseList([H|T], L, Done) :-
        reverseList(T, L, [H|Done]).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList):-
  mergeLists(List, [El], NewList).
