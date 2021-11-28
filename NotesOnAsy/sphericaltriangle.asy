settings.offline=true;
import graph3;
size(400);
currentlight.background=palegreen;

defaultrender=render(compression=Zero,merge=true);

int nArc=4;

surface sphericaltriangle(triple center, triple A, triple B, triple C,
                          int nu=4, int nv=nu) {

  triple tri(pair p) {
    path3 arcBC=Arc(center,B,C,nArc);
    path3 arcA2BC=Arc(O,A,relpoint(arcBC,p.y),nArc);
    return relpoint(arcA2BC,p.x);
  }
  return surface(tri,(0,0),(1,1),nu,nv,Spline);
}


triple A=unit((1,0,0));
triple B=(0,1,0);
triple C=unit((.5,.5,1));

surface s=sphericaltriangle(O,A,B,C);
draw(s,lightolive+white,"bottle",render(merge=true));
string latex="\LaTeX";
string wp="$\wp$";
real h=0.0125;
draw(surface(xscale(0.2)*yscale(0.1)*latex,s,2,2,h,bottom=false),cyan);
draw(surface(xscale(0.2)*yscale(0.3)*wp,s,3,2,h,bottom=false));
//draw(s.uequals(0),blue+dashed);
draw(s.uequals(3.99),red+dashed);
draw(s.vequals(3.99),green+dashed);
draw(s.vequals(0),blue+dashed);

label("$A$",A,W,red,Billboard);
label("$B$",B,E,red,Embedded);
label("$C$",C,N,blue,Embedded);



