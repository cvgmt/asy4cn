size(200);
import graph;
import geometry;
path p=(20,62)..controls(22.355845984,76.64928851)and(27.8106422314,90.6272038938)..(36,103)
..controls(44.9665106317,116.546948487)and(58.0706297439,128.039287615)..(74,127)
..controls(81.8919239803,126.485103383)and(89.007116074,122.654336409)..(96,119)
..controls(122.566990186,105.11664078)and(154.136314453,95.5526705373)..(175,115)
  ..controls(181.689510041,121.235384703)and(185.6433916,129.862035378)..(186,139);
draw(p);
point A=point(p,0);
point B=point(p,length(p));

real k=(B.y-A.y)/(B.x-A.x);
real t=dirtime(p,(1,k));
point C=point(p,t);
draw(C--(C.x,0),dashed);
transform proj=projection(A,B);
point M=proj*C;
draw(C--M,dashed);

draw(A--B);
draw(C--(C.x,0),dashed);
draw(C-40(1,k)--C+40(1,k));
pair P=point(p,t+1);
dot("$P$",P,NE);
point N1=proj*P;
draw(P--N1,dashed);
label("$N$",N1,SE);
point M=intersectionpoint(line(A,B),line(P,(P.x,0)));
draw(P--M,dashed);
label("$M$",M,S);
label("$C$",C,N);
label("$B$",B,E);
label("$A$",A,W);
label("$O$",(0,0),SW);
label("$\xi$",C.x,S);
label("$a$",A.x,S);
label("$b$",B.x,S);
axes("$x$","$y$",Arrow());
