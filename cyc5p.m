function news5=cyc5p(ns5,ss,tt,dt,noi)
news5=ns5;
szs=size(ss);
patk=ceil(szs(1)*rand());
activity=forw1pat5n(ns5,ss,patk,noi);
odelt=(tt-activity.out); %output deltas
h3delt=0.5*(ns5.whout'*odelt').*(1+activity.hid3').*(1-activity.hid3');%hid3 deltas
h2delt=0.5*(ns5.hwt3'*h3delt).*(1+activity.hid2').*(1-activity.hid2');%hid2 deltas
h1delt=0.5*(ns5.hwt2'*h2delt).*(1+activity.hid1').*(1-activity.hid1');%hid1 deltas
%adjust weights and biases
news5.whout=news5.whout+dt*odelt'*activity.hid3;
news5.hwt3=news5.hwt3+dt*h3delt*activity.hid2;
news5.hwt2=news5.hwt2+dt*h2delt*activity.hid1;
news5.hwt1=news5.hwt1+dt*h1delt*activity.stim;
news5.obias=news5.obias+dt*odelt ;
news5.h3bias=news5.h3bias+dt*h3delt' ;
news5.h2bias=news5.h2bias+dt*h2delt' ;
news5.h1bias=news5.h1bias+dt*h1delt' ;
end