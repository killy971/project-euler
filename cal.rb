$><<" "*30+y=gets<<r=$/
z=(y=y.to_i)%?d
w=y/?d
y=2000+(z<1?[0,10,3,1][w%4]:(z+w%4*4)%28)
m=0
4.times{|n|3.times{$><<" "*([0,9,9,1,12,13,2,11,8,0,9,8][m]+6)+Time.gm(y,m+=1).strftime("%B")}
$><<r+[d="Su Mo Tu We Th Fr Sa",d,d]*"  "+r
*a=0,0,0
6.times{l=""
3.times{|i|(a[i]+=1)>(t=[3,((y%4<1&&y%?d>0)||y%400<1)?1:0,3,2,3,2,3,3,2,3,2,3][o=n*3+i]+28)&&next
((q=l.size)<p=i*22)&&l<<" "*(p-q)
b=Time.gm(y,o+1,f=a[i]).wday
a[i]<2&&l<<"   "*b
f<10&&l<<" "
l<<f.to_s
(i+b<8&&a[i]<t)&&l<<" "
b<6&&redo
i<2&&l<<" "}
$><<l+r}}
