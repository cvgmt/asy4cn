settings.tex="xelatex";
//settings.prc=false;
texpreamble("\usepackage{fontspec}");
texpreamble("\setmainfont{SimSun}");
import three;
size(200);
draw(unitbox,red);
label("顶点 $A$",(1,1,1),2Z);
