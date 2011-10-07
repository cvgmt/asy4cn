size(400);
import three;
import palette;
pen[] colors={red,green,blue,yellow,orange,cyan};
colors.cyclic=true;
surface koch(triple p,triple q,triple r,int n){
  surface s;
  if(n==0){
    s.append(surface(p--q--r--cycle));
  }
  if(n>0){
    triple pq=(p+q)/2;
    triple qr=(q+r)/2;
    triple pr=(p+r)/2;
    triple tmp=(p+q+r)/3+abs(p-q)*unit(cross(q-p,r-p))/sqrt(6);
    s.append(koch(p,pq,pr,n-1));
    s.append(koch(pq,q,qr,n-1));
    s.append(koch(pr,qr,r,n-1));
    s.append(koch(pr,pq,tmp,n-1));
    s.append(koch(pq,qr,tmp,n-1));
    s.append(koch(qr,pr,tmp,n-1));
  }
  return s;
}

int n=4;

surface sf;
sf.append(koch((-1,-1,-1),(1,-1,1),(-1,1,1),n));
sf.append(koch((-1,-1,-1),(1,1,-1),(1,-1,1),n));
sf.append(koch((1,-1,1),(1,1,-1),(-1,1,1),n));
sf.append(koch((-1,-1,-1),(-1,1,1),(1,1,-1),n));

sf.colors(palette(sf.map(abs),Rainbow()));
draw(sf);
/*
  for(int i=0;i<sf.s.length;++i){
  draw(surface(sf.s[i]),colors[i]);
  }
*/
