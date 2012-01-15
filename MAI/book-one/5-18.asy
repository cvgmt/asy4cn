size(200,IgnoreAspect);
import graph;
real f(real x){return exp(-x)*sin(x);}
draw(graph(f,0,2pi+1));
guide g1=graph(new real(real x){return exp(-x);},0.9,2pi+0.1);
guide g2=graph(new real(real x){return -exp(-x);},1.5,2pi+0.1);
draw(g1,dashed);
draw(g2,dashed);
label("$O$",(0,0),SW);
label("$\frac{\mathrm{\pi}}{4}$",pi/4,S);
label("$\frac{\mathrm{\pi}}{2}$",pi/2,S);
label("$\mathrm{\pi}$",pi,S);
label("$\frac{5\mathrm{\pi}}{4}$",5pi/4,N);
label("$\frac{3\mathrm{\pi}}{2}$",3pi/2,N);
label("$2\mathrm{\pi}$",2pi,N);
draw((pi/4,0)--(pi/4,f(pi/4)),dashed);
draw((pi/2,0)--(pi/2,f(pi/2)),dashed);
draw((5pi/4,0)--(5pi/4,f(5pi/4)),dashed);
draw((3pi/2,0)--(3pi/2,f(3pi/2)),dashed);

label(Label("$y=e^{-x}$",position=Relative(0.1),align=4N+3E),g1);

label(Label("$y=-e^{-x}$",position=Relative(0.2),align=4S+2E),g2);
axes("$x$","$y$",Arrow());
