size(200);
texpreamble("
\usepackage{fourier}
\usepackage[T1]{fontenc}
");

import graph3;
import three;
import contour;
import solids;
import labelpath3;
defaultpen(fontsize(15));

currentprojection=perspective(
camera=(13.233646141568,-5.68933912425039,6.7141140486494),
up=(-0.0370965806193627,0.0112964292655084,0.0430879857956991),
target=(0.904875167606338,-0.267192542245532,-5.32186610050458),
zoom=0.90702947845805,
angle=39.7319377166926,
autoadjust=false);


real r=5;
real h=9;
triple O=(0,0,0);
triple K=(0,-r,-h);
triple L=(0,r,-h);
draw(O--K^^O--L,yellow);
real b=5;
real a=3;
triple A=b*unit(K-O);
triple B=a*unit(L-O);
real c=abs(B-A);
draw(A--B,yellow);
triple C=O;
triple In=(a*A+b*B+c*C)/(a+b+c);
triple Out=(a*A+b*B-c*C)/(a+b-c);
triple Proj(triple P,triple A,triple B){
  return A+dot(P-A,unit(B-A))*unit(B-A);
}
draw(In--Proj(In,A,B));
draw(In--Proj(In,B,C));
draw(In--Proj(In,C,A));
draw(Out--Proj(Out,A,B));
draw(Out--Proj(Out,B,C));
draw(Out--Proj(Out,C,A));

dot(Proj(Out,A,B),green+4,nolight);

draw(shift(In)*scale3(abs(Proj(In,A,B)-In))*unitsphere,magenta);
draw(shift(Out)*scale3(abs(Proj(Out,A,B)-Out))*unitsphere,magenta);
path3 p=(0,0,0)--(r*cos(2pi/20),r*sin(2pi/20),-h);
draw(p);
triple T=Proj(Out,B,C);
triple Q=(abs((T.x,T.y))*cos(2pi/20),abs((T.x,T.y))*sin(2pi/20),Proj(Out,B,C).z);
dot(Q,green+4,nolight);
label("$Q$",Q,E,linewidth(4),nolight);
triple S=Proj(In,B,C);
triple P=(abs((S.x,S.y))*cos(2pi/20),abs((S.x,S.y))*sin(2pi/20),Proj(In,B,C).z);
dot(P,green+4,nolight);
label("$P$",P,NE,nolight);
label("$A$",A,NW);
label("$B$",B,E);
label("$C$",C,N);
triple F1=Proj(Out,A,B);
triple F2=Proj(In,A,B);
label("$F_1$",F1,N);
label("$F_2$",F2);
triple f(pair t){
  return A+t.x*unit(cross(B-A,F1-Out))+t.y*unit(B-A);
}
surface pl=surface(f,(-2,-2),(4,6));
draw(pl,cyan+opacity(0.2),nolight);
triple M=intersectionpoints(p,pl)[0];
dot(M,green+6,nolight);
draw(M--F1,red+2,nolight);
draw(M--Q,red+2,nolight);
draw(M--F2,pink+2,nolight);
draw(M--P,pink+2,nolight);
label("$M$",M,E);
draw(shift(Q.z*Z)*scale3(sqrt(Q.x^2+Q.y^2))*unitcircle3,yellow);
draw(shift(P.z*Z)*scale3(sqrt(P.x^2+P.y^2))*unitcircle3,yellow);
real g(pair t){
  return -sqrt(t.x^2+t.y^2)*h/r;
}
real F(pair z){
  real x=z.x;
  real y=z.y;
  return dot((F1-Out),(x,y,g(z))-A);
}
draw(lift(g,contour(F,(-4,-4),(4,4),new real[]{0})),cyan+2,nolight);
surface s=shift(-h*Z)*scale(r,r,h)*unitcone;
draw(s,yellow+opacity(0.3));


