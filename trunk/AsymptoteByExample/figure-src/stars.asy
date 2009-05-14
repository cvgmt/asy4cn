settings.tex = "xelatex";

usepackage("xeCJK");
texpreamble(
"\setCJKmainfont{FZSongHeiTi_GB18030}");

Label L =
"\fontsize{16bp}{20bp}\selectfont
\begin{minipage}{3em}
天上星\par
亮晶晶\par
永燦爛\par
長安寧
\end{minipage}";

path unitstar(int n = 5, real r = 0, real angle = 90)
{
    guide g;
    if (n < 2) return nullpath;
    real rot = 180/n;
    if (r == 0) {
	if (n < 5)
	    r = 1/4;
	else
	    r = Cos(2rot) / Cos(rot);
    }
    for (int k = 0; k < n; ++k)
	g = g -- dir(angle+2k*rot) -- r * dir(angle+(2k+1)*rot);
    g = g -- cycle;
    return g;
}

void star5(pair pos, real size, pen p)
{
    fill(shift(pos) * scale(size) * unitstar(5), p);
}

void star4(pair pos, real size, pen p)
{
    fill(shift(pos) * scale(size) * unitstar(4), p);
}

pen operator %(pen p, real x) {return interp(white, p, x/100);}
pen[] colors = {blue%50, yellow%50, red%50, orange%50};
for (int i = 0; i < 100; ++i)
{
    pair pos = (unitrand() * 12cm, unitrand()*9cm);
    int r = rand();
    if (r < randMax/3)
	star5(pos, 2+unitrand()*3, colors[rand()%colors.length]);
    else if (r < 2/3*randMax)
	star4(pos, 2+unitrand()*3, colors[rand()%colors.length]);
    else
	fill(circle(pos, 0.5), white);
}

label(L, (12cm,9cm), align=SW, yellow, Fill(darkblue+opacity(0.5)));

shipout(bbox(Fill(darkblue)));
