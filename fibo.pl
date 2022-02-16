fib(0,0).
fib(1,1).
fib(X,N):-N>1, is N-1,N2 is N-2, fib(X1,N1),fib(X2,N2),X is X1+X2.

fib_ser(S,N):-N>1,fib_ser_(N,SR,1,[1,0]),reverse(SR,S).

fib_ser_(N,Ser,N,Ser).
fib_ser_(N,Ser,N0,[B,A|Fs]):-N>N0,N1 is N0+1,C is A+B,fib_ser_(N,Ser,N1,[C,B,A|Fs]).