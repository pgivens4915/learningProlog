% Prolog
word(determiner, a).
word(determiner, every).
word(noun, 'big kahuna burger').
word(noun, criminal).
word(verb, eats).
word(verb, likes).

sentence(W1, W2, W3, W4, W5):-
  word(determiner, W1),
  word(noun, W2),
  word(verb, W3),
  word(determiner, W4),
  word(noun, W5),
  nl.

numeral(0).
numeral(succ(X)) :- numeral(X).

greater_than(succ(X), 0) :- numeral(X).
greater_than(succ(X),succ(Y)) :- greater_than(X, Y).

% 
