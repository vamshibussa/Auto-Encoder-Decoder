function netact=forw5(netwk,pats)
netact.stim=pats.smat;
netact.hid1=layersigpn(netact.stim,netwk.hwt1,netwk.h1bias) ;
netact.hid2=layersigpn(netact.hid1,netwk.hwt2, netwk.h2bias);
netact.hid3=layersigpn(netact.hid2,netwk.hwt3,netwk.h3bias);
netact.out=layersig01(netact.hid3,netwk.whout,netwk.obias) ;
end