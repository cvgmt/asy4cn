import graph;
size(200, IgnoreAspect);
file filename=input("data.txt").line();
write(filename);
real[][] A=filename.dimension(0,0);
A=transpose(A);
real[] x=A[0];
real[] y=A[1];
guide g = graph(x,y);
draw(g,red);
pair[] a=pairs(x,y);
dot(a);
xaxis(BottomTop, LeftTicks);
yaxis(LeftRight, RightTicks);