import graph3;
import palette;
size(200);
currentprojection=orthographic(4,2,4);

real r(real theta, real phi) {return 1+0.5*(sin(2*theta)*sin(2*phi))^2;}

triple f(pair z) {return r(z.x,z.y)*expi(z.x,z.y);}

surface s=surface(f,(0,0),(pi,2pi),Spline);

//pen[][] pens=palette(s.map(abs),Gradient(yellow,red));

//pen[] pens=mean(penss);

s.colors(palette(s.map(abs),Gradient(yellow,red)));

draw(s);

