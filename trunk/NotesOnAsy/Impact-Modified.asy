// Contributed by Philippe Ivaldi , modified by cvgmt :-)
import graph3 ;
import contour;
size (6cm,0);
currentprojection=orthographic(1,1,1) ;
real rc=1, hc=2, c=rc/hc;
draw(shift(hc*Z)*scale(rc,rc,-hc)*unitcone,blue);
triple Os=(0.5,0.5,1);
real r=0.5;
draw(shift(Os)*scale3(r)*unitsphere,red);
real g(pair z){return (sqrt(z.x^2+z.y^2))/c;}
draw(surface(g,(-1,-1),(1,1),Spline),springgreen+opacity(0.2));
real f(pair z){
  real x=z.x;
  real y=z.y;
  return  (x-Os.x)^2+(y-Os.y)^2+(g(z)-Os.z)^2-r^2;
}
draw(lift(g,contour(f,(-1,-1),(1,1),new real[]{0})),linewidth(2bp)+yellow);
axes3("$x$","$y$","$z$",Arrow3);
