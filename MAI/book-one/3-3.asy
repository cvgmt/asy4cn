import graph;
size(200,200*0.618,IgnoreAspect);

real f(real x) {return (x != 0) ? sin(1/x) : 0;}
real T(real x) {return 2/(x*pi);}

real a=-1.8/pi, b=1.8/pi;
int n=150,m=20;

draw(graph(f,a,-T(m),n));
draw(graph(f,T(m),b,n));
//draw(graph(f,-m,-(m+n),n,T)--(0,f(0))--graph(f,m+n,m,n,T));

label("$y=\sin\frac{1}{x}$",(b,f(b)),4S);
xlimits(-a-0.1,b+0.1);
ylimits(-1.2,1.2);
axes("$x$","$y$",Arrow());

