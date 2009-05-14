if(!settings.multipleView)
 settings.batchView=false;
settings.tex="xelatex";

// Beginning of Asymptote Figure 1
eval(quote{
defaultfilename='main-1';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw( (0,0) -- (1cm,0) -- (2cm,0.5cm) -- (1cm,1cm) -- (0,1cm) );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 1

// Beginning of Asymptote Figure 2
eval(quote{
defaultfilename='main-2';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw( (0,0) -- (1cm,0) -- (2cm,0.5cm) -- (1cm,1cm) -- (0,1cm) -- cycle );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 2

// Beginning of Asymptote Figure 3
eval(quote{
defaultfilename='main-3';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw((0,0) -- (1cm,0) -- (2cm,0.5cm) -- (1cm,1cm) -- (0,1cm), darkblue+1mm);
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 3

// Beginning of Asymptote Figure 4
eval(quote{
defaultfilename='main-4';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw( (0,0) -- (4cm,0) -- (0,3cm) -- cycle, red+0.5mm );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 4

// Beginning of Asymptote Figure 5
eval(quote{
defaultfilename='main-5';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

fill( (0,0) -- (4cm,0) -- (0,3cm) -- cycle, red );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 5

// Beginning of Asymptote Figure 6
eval(quote{
defaultfilename='main-6';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

filldraw((0,0) -- (4cm,0) -- (0,3cm) -- cycle,
    fillpen=palered, drawpen=red+0.5mm);
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 6

// Beginning of Asymptote Figure 7
eval(quote{
defaultfilename='main-7';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

filldraw( (4cm,0) -- (4cm,3cm) -- (0,3cm) -- cycle,
    fillpen=palered, drawpen=red+0.5mm);
filldraw( (7cm,4cm) -- (4cm,4cm) -- (4cm,0) -- cycle,
    fillpen=palered, drawpen=red+0.5mm);
filldraw( (3cm,7cm) -- (3cm,4cm) -- (7cm,4cm) -- cycle,
    fillpen=palered, drawpen=red+0.5mm);
filldraw( (0,3cm) -- (3cm,3cm) -- (3cm,7cm) -- cycle,
    fillpen=palered, drawpen=red+0.5mm);
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 7

// Beginning of Asymptote Figure 8
eval(quote{
defaultfilename='main-8';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

fill( box((3cm,3cm), (4cm,4cm)), opacity(0.5)+yellow );
filldraw( (4cm,0) -- (4cm,3cm) -- (0,3cm) -- cycle
    ^^ (7cm,4cm) -- (4cm,4cm) -- (4cm,0) -- cycle
    ^^ (3cm,7cm) -- (3cm,4cm) -- (7cm,4cm) -- cycle
    ^^ (0,3cm) -- (3cm,3cm) -- (3cm,7cm) -- cycle,
    fillpen=opacity(0.1)+red, drawpen=red+0.5mm );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 8

// Beginning of Asymptote Figure 9
eval(quote{
defaultfilename='main-9';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw( (0,0) -- (3cm,0)
    ^^ (0,1cm) -- (3cm,1cm)
    ^^ (0,2cm) -- (3cm,2cm)
    ^^ (0,3cm) -- (3cm,3cm),
    gray );
draw( (0,0) -- (0,3cm)
    ^^ (1cm,0) -- (1cm,3cm)
    ^^ (2cm,0) -- (2cm,3cm)
    ^^ (3cm,0) -- (3cm,3cm),
    gray );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 9

// Beginning of Asymptote Figure 10
eval(quote{
defaultfilename='main-10';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

import math;
add(grid(10,10,gray));
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 10

// Beginning of Asymptote Figure 11
eval(quote{
defaultfilename='main-11';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw( scale(2cm) * box((0,0), (1,1)) );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 11

// Beginning of Asymptote Figure 12
eval(quote{
defaultfilename='main-12';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw( rotate(90) * slant(0.3) * scale(1cm) * box((0,0), (1,1)) );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 12

// Beginning of Asymptote Figure 13
eval(quote{
defaultfilename='main-13';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

import math;
add( scale(5mm) * grid(4, 4, gray) );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 13

// Beginning of Asymptote Figure 14
eval(quote{
defaultfilename='main-14';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

// 网格
import math;
add( scale(1cm) * grid(7, 7, gray) );
add( shift(0,3cm) * rotate(-aTan(3/4)) * scale(1cm) * grid(5, 5, gray) );
// 弦图主体
fill( box((3cm,3cm), (4cm,4cm)), opacity(0.5)+yellow );
filldraw( (4cm,0) -- (4cm,3cm) -- (0,3cm) -- cycle
    ^^ (7cm,4cm) -- (4cm,4cm) -- (4cm,0) -- cycle
    ^^ (3cm,7cm) -- (3cm,4cm) -- (7cm,4cm) -- cycle
    ^^ (0,3cm) -- (3cm,3cm) -- (3cm,7cm) -- cycle,
    fillpen=opacity(0.1)+red, drawpen=red+0.5mm );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 14

// Beginning of Asymptote Figure 15
eval(quote{
defaultfilename='main-15';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

settings.tex = "xelatex";
usepackage("xeCJK");
texpreamble("\setCJKmainfont{SimSun}");
draw( (0,0) -- (1cm,1cm) -- (2cm,0) );
label( "中间", (1cm,0cm) );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 15

// Beginning of Asymptote Figure 16
eval(quote{
defaultfilename='main-16';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

settings.tex = "xelatex";
usepackage("xeCJK");
texpreamble("\setCJKmainfont{SimSun}");
import math;
add( scale(1cm) * grid(7, 7, gray) );
add( shift(0,3cm) * rotate(-aTan(3/4)) * scale(1cm) * grid(5, 5, gray) );
fill( box((3cm,3cm), (4cm,4cm)), opacity(0.5)+yellow );
filldraw( (4cm,0) -- (4cm,3cm) -- (0,3cm) -- cycle
    ^^ (7cm,4cm) -- (4cm,4cm) -- (4cm,0) -- cycle
    ^^ (3cm,7cm) -- (3cm,4cm) -- (7cm,4cm) -- cycle
    ^^ (0,3cm) -- (3cm,3cm) -- (3cm,7cm) -- cycle,
    fillpen=opacity(0.1)+red, drawpen=red+0.5mm );
label("朱实", (2cm,4cm));
label("黄实", (3.5cm,3.5cm));
label("弦实", (5cm,4cm));
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 16

// Beginning of Asymptote Figure 17
eval(quote{
defaultfilename='main-17';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

settings.tex = "xelatex";
usepackage("xeCJK");
texpreamble("\setCJKmainfont{SimSun}");
draw( (0,0) -- (4cm,2cm), linewidth(0.5mm) );
label("粗线条", (0,0) -- (4cm,2cm));
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 17

// Beginning of Asymptote Figure 18
eval(quote{
defaultfilename='main-18';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

settings.tex = "xelatex";
usepackage("xeCJK");
texpreamble("\setCJKmainfont{SimSun}");
filldraw( (4cm,0) -- (4cm,3cm) -- (0,3cm) -- cycle,
    fillpen=opacity(0.1)+red, drawpen=red+0.5mm );
label( "勾三", (4cm,3cm) -- (4cm,0) );
label( "股四", (0,3cm) -- (4cm,3cm) );
label( "弦五", (4cm,0) -- (0,3cm) );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 18

// Beginning of Asymptote Figure 19
eval(quote{
defaultfilename='main-19';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw( (0,0) -- (4cm,2cm), blue, Arrow );
label( "LeftSide", (0,0) -- (4cm,2cm), align=LeftSide );
label( "RightSide", (0,0) -- (4cm,2cm), align=RightSide );
label( "Center", (0,0) -- (4cm,2cm), align=Center );

draw( (6cm,0)--(8cm,2cm), blue, Arrow );
label( "E", (6cm,0)--(8cm,2cm), Relative(E) );
label( "S", (6cm,0)--(8cm,2cm), Relative(S) );
label( "W", (6cm,0)--(8cm,2cm), Relative(W) );
label( "N", (6cm,0)--(8cm,2cm), Relative(N) );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 19

// Beginning of Asymptote Figure 20
eval(quote{
defaultfilename='main-20';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

draw( (0,0)--(4cm,2cm), blue, Arrow );
label( Label("Rotate", Rotate((4,2))),
    (0,0)--(4cm,2cm) );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 20

// Beginning of Asymptote Figure 21
eval(quote{
defaultfilename='main-21';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

settings.tex = "xelatex";
usepackage("xeCJK");
texpreamble("\setCJKmainfont{SimSun}");

import math;
add( scale(1cm) * grid(7, 7, gray) );
add( shift(0,3cm) * rotate(-aTan(3/4)) * scale(1cm) * grid(5, 5, gray) );

fill( box((3cm,3cm), (4cm,4cm)), opacity(0.5)+yellow );
filldraw( (4cm,0) -- (4cm,3cm) -- (0,3cm) -- cycle
    ^^ (7cm,4cm) -- (4cm,4cm) -- (4cm,0) -- cycle
    ^^ (3cm,7cm) -- (3cm,4cm) -- (7cm,4cm) -- cycle
    ^^ (0,3cm) -- (3cm,3cm) -- (3cm,7cm) -- cycle,
    fillpen=opacity(0.1)+red, drawpen=red+0.5mm );

label("朱实", (2cm,4cm));
label("黄实", (3.5cm,3.5cm));
label("弦实", (5cm,4cm));
label( Label("勾三",Rotate(S)), (4cm,0)--(4cm,3cm), LeftSide );
label( Label("股四",Rotate(E)), (4cm,3cm)--(0,3cm), LeftSide );
label( Label("弦五",Rotate((4,-3))), (0,3cm)--(4cm,0), LeftSide );
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 21

// Beginning of Asymptote Figure 22
eval(quote{
defaultfilename='main-22';
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat='';
settings.toolbar=false;

import roundedpath;
pen thick = linewidth(0.8pt);
path p = (0,0) -- (0,2cm) -- (1cm,3.25cm) -- (2cm,2cm) -- (2cm,0)
-- (0,2cm) -- (2cm, 2cm) -- (0,0) -- (2cm,0);
draw(roundedpath(p, 8pt), thick);
viewportsize=(611.73427pt,0);
});
// End of Asymptote Figure 22
