function finalnet=bp5(net0,patstr,niter,eta,nlev)
netk=net0;
sz=size(patstr.smat) ;
for i=1:niter
    kpat=ceil(sz(1)*rand()) ;
    netk=cyc5p(netk,patstr.smat(kpat,:),patstr.tmat(kpat,:),eta,nlev) ;
end
finalnet=netk;
end