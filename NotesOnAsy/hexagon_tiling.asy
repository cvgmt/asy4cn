srand(seconds());
size(200);
int level=12;
pen[] colors;
for(int i=0;i<level;++i){
  colors.push(rgb(unitrand(),unitrand(),unitrand()));
}
colors.cyclic=true;
for(int n=0;n<level;++n)
  for(int k=0;k<6;++k)
    for(int d=0;d<n;++d){
      filldraw(shift((interp(n*sqrt(3)*dir((2k*180)/6+180/2), n*sqrt(3)*dir((2(k+1)*180/6+180/2)),d/n)))*polygon(6),drawpen=white,fillpen=colors[n]);
    }


