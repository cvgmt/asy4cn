// -*- coding: utf-8 -*-
texpreamble("
\usepackage{xeCJK}
\setCJKmainfont{SimHei}
\AtBeginDocument{\boldmath}
");
settings.tex="xelatex";
settings.outformat="eps";
size(200);
draw(scale(1.2)*unitcircle);
draw(rotate(30)*polygon(6),red);
label("圆 $\mathcal{A}$ 心",(0,0),blue+6);
