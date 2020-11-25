import three;
import graph3;

size(10cm,0);

currentprojection=orthographic(1,1.5,1);

string mylabel="$\alpha$";

triple A=(1,0,0),B=(0,2,0),C=(0,0,3);
limits((-1,-1,-1),(5,5,5));
xaxis3("$x$",Arrow3,p=lightblue);
yaxis3("$y$",Arrow3,p=lightblue);
zaxis3("$z$",Arrow3,p=lightblue);
label(scale3(10)*align(mylabel,normal(A--B--C)),(A+B+C)/3,red,Embedded);
draw(A--B--C--cycle);
dot("A",A,dir(A-B)); dot("B",B); dot("C",C,dir(C-B));
