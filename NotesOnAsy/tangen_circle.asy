settings.outformat="pdf";
settings.prc=false;
settings.render=0;
size(200);
import graph3;

currentprojection=perspective(
camera=(5.72652649676416,-1.55535654473839,2.82236328555192),
up=(-0.00369224791532428,0.00177206737782396,0.00925549144711344),
target=(0.1428774070053,0.219780314387179,0.255031930018994),
zoom=0.676839362028687,
angle=26.8249736929184,
autoadjust=false);

triple f(pair t){
  real u=t.x;
  real v=t.y;
  int n=10;
  triple A=relpoint(Arc(O,unit(Z+X),unit(X+Y),n),u);
  triple B=relpoint(Arc(O,unit(Z+X),unit(Y+Z),n),u);
  triple C=relpoint(Arc(O,B,A,n),v);
  return C;
}

pen bg=gray+opacity(0.2);

draw(surface((1.2,0,0)--(1.2,0,1.2)--(0,0,1.2)--(0,0,0)--cycle),bg);
draw(surface((0,1.2,0)--(0,1.2,1.2)--(0,0,1.2)--(0,0,0)--cycle),bg);
draw(surface((1.2,0,0)--(1.2,1.2,0)--(0,1.2,0)--(0,0,0)--cycle),bg);

triple P=unit(X+Y);
triple Q=unit(Y+Z);
triple R=unit(Z+X);

draw(arc(c=O,P,Q,normal=cross(P,Q),direction=CW),blue+1);
draw(arc(c=O,P,Q,normal=cross(P,Q),direction=CCW),yellow+2);

draw(O--Q,red,Arrow3());
draw(Label("$N$",EndPoint,N),O--cross(P,Q),red,Arrow3());
draw(Label("$T$",EndPoint,N),Q--Q+cross(cross(P,Q),Q),red,Arrow3());
dot(P,yellow+4);
dot(Q,yellow+4);

label("$O$",O,SW);
label("$P$",unit(X+Y),E);
label("$Q$",unit(Y+Z),NE);

axes3("$x$","$y$","$z$");




