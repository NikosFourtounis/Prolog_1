arc(a,b).
arc(a,c).
arc(a,d).
arc(b,e).
arc(c,e).
arc(c,f).
arc(d,f).
arc(f,g).
arc(g,e).
path(X,X).
path(X,Z) :- arc(X,Y), path(Y,Z).
path(X,X,0).
path(X,Z,L1) :- arc(X,Y), path(Y,Z,L2), L1 is L2+1.