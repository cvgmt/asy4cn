size(200);
import three;
currentprojection=orthographic(3,1,2);
int[][] M={
  {1,2,3},
  {0,1,2},
  {0,0,1},
};
for(int i=0;i<M.length;++i)
  for(int j=0;j<M[i].length;++j)
    if(M[i][j]!=0)
      draw(shift(i,j,0)*zscale3(M[i][j])*unitcube,Pen(i+j));


