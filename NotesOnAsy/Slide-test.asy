settings.tex="xelatex";
texpreamble("
  \usepackage{fontspec}
  \setmainfont{SimHei}
  \usepackage{hyperref}
  \hypersetup{pdfpagemode=FullScreen} % 全屏显示
  ");
settings.user="stepping=true"; //生成步进形式的幻灯
orientation=Landscape;
import slide;
import three;
usersetting();
import x11colors; // Azure 颜色在 x11colors 里面定义了.
fill(background,box((-1,-1),(1,1)),Azure);
label(background,"",(0,startposition.y));
titlepage(title="PRC 真 3D 示例",
          author="cvgmt",
          institution="数学系",
          date="\today",
          url="http://bbs.ctex.org");
title("Asymptote 开始支持真3D");
item("整个进展如下");
subitem("先是支持把 asy 生成的 prc 嵌入 pdf 中");
subitem("接着支持利用 OpenGL 不依赖于 Adobe Reader 预览");
item("希望有进一步的进展");
item("下面是一个 unitbox 的例子");
newslide();
asyinclude(asywrite("
  size(500);
  draw(unitbox);
  dot((1,1,1),red);
  arrow(Label(\" $A$ 点\"),(1,1,1),-Z+Y);
  "));
