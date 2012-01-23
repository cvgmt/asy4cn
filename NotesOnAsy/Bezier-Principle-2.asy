size(200);
pair z0=(0,0),c0=(1,1),c1=(2,1), z1=(3,0);
draw(z0--c0--c1--z1);
real t=1/3;
pair m0=interp(z0,c0,t);
pair m1=interp(c0,c1,t);
pair m2=interp(c1,z1,t);
pair m3=interp(m0,m1,t);
pair m4=interp(m1,m2,t);
pair m5=interp(m3,m4,t);
dot(m0);
dot(m1);
dot(m2);
dot(m3);
dot(m4);
dot(m5);
draw(m0--m1--m2);
draw(m3--m4);
draw(z0..controls c0 and c1..z1,red);