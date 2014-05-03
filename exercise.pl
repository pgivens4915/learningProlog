% Prolog

% Our dictionary
word(astante,  a,s,t,a,n,t,e). 
word(astoria,  a,s,t,o,r,i,a). 
word(baratto,  b,a,r,a,t,t,o). 
word(cobalto,  c,o,b,a,l,t,o). 
word(pistola,  p,i,s,t,o,l,a). 
word(statale,  s,t,a,t,a,l,e).

% Our crossword

crossword(W1, W2, W3, W4, W5, W6) :-
  alldif([W1, W2, W3, W4, W5, W6]),
  word(W1, X4, A,X5, B,X6 ,C,X7 ),
  word(W2, X8, D,X9, E,X10,F,X11),
  word(W3, X12,G,X13,H,X14,I,X15),
  word(W4, X1, A,X19,D,X20,G,X16),
  word(W5, X2, B,X21,E,X22,H,X17),
  word(W6, X3, C,X23,F,X24,I,X18),
  nl.

% All diff function

alldif([]).
alldif([E|Es]) :-
  maplist(dif(E), Es),
  alldif(Es).

