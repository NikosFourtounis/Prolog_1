father(giannis,kostas).
father(giannis,nikos).
father(kostas,petros).
father(kostas,makis).
father(nikos,spiros).
brother(X,Y) :- father(Z,X), father(Z,Y), not(X=Y).