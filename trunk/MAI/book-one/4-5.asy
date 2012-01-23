size(200);
import geometry;
import patterns;
add("hatch",hatch(5));
draw(unitsquare,linewidth(1));
real c=0.2;
filldraw((0,0)--(c,0)--(c,c)--(0,c)--cycle,fillpen=pattern("hatch"),drawpen=linewidth(1));
filldraw((1-c,0)--(1,0)--(1,c)--(1-c,c)--cycle,fillpen=pattern("hatch"),drawpen=linewidth(1));
filldraw((1-c,1-c)--(1,1-c)--(1,1)--(1-c,1)--cycle,fillpen=pattern("hatch"),drawpen=linewidth(1));

filldraw((0,1-c)--(c,1-c)--(c,1)--(0,1)--cycle,fillpen=pattern("hatch"),drawpen=linewidth(1));

draw((c,c)--(1-c,c)--(1-c,1-c)--(c,1-c)--cycle,dashed+1);
distance(Label("$a$",UnFill(5)),(1,0),(1,1),arrow=Arrows(),rotated=false,offset=8,p=linewidth(0.8));
distance(Label("$x$",align=S),(0,0),(c,0),arrow=Arrows(),offset=8,p=linewidth(0.8));
