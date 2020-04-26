function newnet=initnet5(nin,nhid1,nhid2,nhid3,nout,amp1,amp2,amp3,ampo)
newnet.hwt1=amp1*(rand(nhid1,nin)-0.5) ;
newnet.hwt2=amp2*(rand(nhid2,nhid1)-0.5) ;
newnet.hwt3=amp3*(rand(nhid3,nhid2)-0.5) ;
newnet.whout=ampo*(rand(nout,nhid3)-0.5) ;
newnet.h1bias=amp1*(rand(1,nhid1)-0.5) ;
newnet.h2bias=amp2*(rand(1,nhid2)-0.5) ;
newnet.h3bias=amp3*(rand(1,nhid3)-0.5) ;
newnet.obias=ampo*(rand(1,nout)-0.5) ;
end