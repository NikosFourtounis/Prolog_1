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
leaf(X) :- not(edge(X,Y)).
internal(X) :- edge(X,Y).
root(X) :- not(edge(Y,X)).
children(X) :- edge(X,Y), write(Y).
descendats2(X,Y) :- edge(X,Y),write(Y).
descendats2(X,Y) :- edge(X,Y), descendats2(Y,Z),write(Y).
descendats(X) :- descendats2(X,Y).