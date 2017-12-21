/*1? ????tµa*/
edge(a,b).
edge(a,c).
edge(a,d).
edge(b,e).
edge(b,f).
edge(e,k).
edge(f,l).
edge(f,m).
edge(m,t).
edge(c,g).
edge(c,h).
edge(c,i).
edge(h,n).
edge(i,o).
edge(i,p).
edge(d,j).
edge(j,q).
edge(j,r).
edge(j,s).
/*2? ????tµa*/
leaf(X) :- not(edge(X,Y)).
/*3? ????tµa*/
internal(X) :- edge(X,Y).
/*4? ????tµa*/
root(X) :- not(edge(Y,X)).
/*5? ????tµa*/
children(X) :- edge(X,Y), write(Y).
/*6? ????tµa*/
descendats2(X,Y) :- edge(X,Y),write(Y).
descendats2(X,Y) :- edge(X,Y), descendats2(Y,Z).
descendats(X) :- descendats2(X,Y).
/*7? ????tµa*/
depth2(X,Y,0) :- edge(X,Y).
depth2(X,Y,D1) :- edge(X,Y), depth2(Z,X,D2), D1 is D2+1.
depth(X,D) :- depth2(Y,X,D2), D is D2+1.
/*8? ????tµa*/
