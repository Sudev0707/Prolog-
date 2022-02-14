pal([]):- write('palindrome').
pal([_]):- write('palindrome').
pal(L) :-
 append([H|T], [H], L),
 pal(T)
 ;
 write('Not a palindrome').