import three; 
size(12cm,0);
currentprojection = orthographic((4,3.9,3.1));


path3 pXY=plane(O=(-.25,-.25,0),1.5X,1.5Y);
label(YZ*"$x=0$",(0,1,1),Embedded);

path3 pYZ=plane(O=(0,-.25,-.25),1.5Z,1.5Y);
label(XZ*"$y=0$",(1,0,1),Embedded);

path3 pXZ=plane(O=(-.25,0,-.25),1.5X,1.5Z);
label(rotate(180,O,Z)*"$z=0$",(1,1,0),Embedded);

draw(surface(pXY), white+opacity(.5));
draw(surface(pXZ), green+opacity(.5));
draw(surface(pYZ), blue+opacity(.5));
