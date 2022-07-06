texpreamble("
\usepackage{xeCJK}
%\setmainfont{DejaVu Sans}
%\setmainfont{TeX Gyre Heros:style=Bold}
	          \AtBeginDocument{\boldmath}
\setCJKmainfont{SimHei}
");
settings.tex="xelatex";
settings.user="stepping=true"; // 生成步进形式的幻灯

orientation=Landscape;
import slide;
import three; // 此处告诉 asy 调用 hyperref 和 movie15.
usersetting();// 使得 settings.user="stepping=true"; 生效.
titlepen=fontsize(40);// 控制 title 的字体大小和颜色.
itempen=fontsize(25);// 控制 item 的字体大小和颜色.
import x11colors; // Azure 颜色在 x11colors 里面定义了.
fill(background,box((-1,-1),(1,1)),Azure);
label(background,"",(0,startposition.y));

titlepage(title="微分与导数",
          author="cvgmt",
          institution="数学");
title("微分");
item("函数 $y=f(x)$ 在 $x$ 处的微分 ");
subitem("自变量 $x$ 有一个增量 $\Delta x$, $x$ 变成 $x+\Delta x$");
subitem("因变量 $y$ 有一个增量 $\Delta y=f(x+\Delta x)-f(x)$");


item("讨论 $y=f(x)=x^2$");
//subitem("$\Delta y =$");
equation("\begin{align}
\Delta y &=f(x+\Delta x)-f(x)\\
	 &=(x+\Delta x)^2-x^2\\
	 &=2x\cdot\Delta x+(\Delta x)^2
	 \end{align}");
subitem("记线性主部 $\mathrm{d}y=2x\cdot\Delta x$ 为因变量 $y$ 的微分.");
subitem("记 $\mathrm{d}x=\Delta x$ 为自变量 $x$ 的微分.");
subitem("$\mathrm{d}y=2x\,\mathrm{d}x$");
newslide();


