% Prolog

member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

a2b([],[]).
a2b([a|T1],[b|T2]) :- a2b(T1,T2).

tran(eins,one). 
tran(zwei,two). 
tran(drei,three). 
tran(vier,four). 
tran(fuenf,five). 
tran(sechs,six). 
tran(sieben,seven). 
tran(acht,eight). 
tran(neun,nine).

trans([],[]).
trans([X | T],[Y | NT]) :- tran(X,Y), trans(T,NT).

twice([],[]).
twice([H | T], [H, H | NT]) :- twice(T,NT).
