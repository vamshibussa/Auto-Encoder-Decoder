function netact=forw1pat5n(netwk,pats,patno,nois)
netact.stim=pats(patno,:);
netact.hid1 = nlayersigpn(netact.stim,netwk.hwt1,netwk.h1bias,nois) ;
netact.hid2 = nlayersigpn(netact.hid1,netwk.hwt2, netwk.h2bias,nois);
netact.hid3 = nlayersigpn(netact.hid2,netwk.hwt3,netwk.h3bias,nois);
netact.out=layersig01(netact.hid3,netwk.whout,netwk.obias) ;