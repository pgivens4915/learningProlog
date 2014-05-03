% Prolog
houseElf(dobby).
witch(hermoione).
witch('McGonagall').
witch(ritaSkeeter).
magic(X) :- houseElf(X).
magic(X) :- wizard(X).
magic(X) :- witch(X).
