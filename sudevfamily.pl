/*Knowledge base*/

male(shikari).
male(doman).
male(pralay).
male(gurupodo).
male(manish).
male(nitish).
male(sudev).
male(suman).

female(punu).
female(meghu).
female(niyati).
female(pooja).

parent(shikari,doman).
parent(shikari,pralay).
parent(shikari,meghu).
parent(doman,sudev).
parent(doman,suman).
parent(doman,pooja).
parent(pralay,gurupodo).

parent(punu,doman).
parent(punu,pralay).
parent(punu,meghu).
parent(niyati,sudev).
parent(niyati,suman).
parent(niyati,pooja).
parent(meghu,manish).
parent(meghu,nitish).




father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).

sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.

grandparent(X,Y):-parent(X,Z),parent(Z,Y).
grandmother(X,Z):-mother(X,Y),parent(Y,Z).
grandfather(X,Z):-father(X,Y),parent(Y,Z).

uncle(X,Z):-brother(X,Y),parent(Y,Z).
aunt(X,Z):-sister(X,Y),parent(Y,Z).

nephew(Y,Z):-broyher(X,Y),parent(X,Z),male(Z).
niece(Y,Z):-brother(x,Y),parent(X,Z),female(Z).





/*
cousin(X,Y):-cousin(Y,X).
cousin(X,Y):- parent(Z,X),aunt(Z,Y).
cousin(X,Y) :- parent(Z,X),nephew(Y,Z).
cousin(X,Y):- parent(Z,X),niece(Y,Z).
cousin(X,Y):- parent(Z,X),uncle(Z,Y).
*/

/*
nephew(X,Y) :- aunt(Y,X),male(X).
nephew(X,Y) :- uncle(Y,X),male(X).
niece(X,Y) :- aunt(Y,X),female(X).
niece(X,Y) :- uncle(Y,X),female(X).
*/