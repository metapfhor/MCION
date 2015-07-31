function chainAffinities(xxp)
global K1 K2 K3 K4 K5 K6 K7 K8 K9 K10 K11 K12
nx=size(x,2);
Kone=zeros(4,nx);
Ktwo=zeros(4,nx);
Kthree=zeros(4,nx);
K=zeros(3,4,nx);
for i=1:nx
    setParamsP2X4free(x(:,i))
    affinitySet();
    
    Kone(:,i)=[K1,K4,K7,K10];
    K(1,:,i)=[K1,K4,K7,K10];
    Ktwo(:,i)=[K2,K5,K8,K11];
    K(2,:,i)=[K2,K5,K8,K11];
    Kthree(:,i)=[K3,K6,K9,K12];
    K(3,:,i)=[K3,K6,K9,K12];
end
u1=unique(Kone(:));
u2=unique(Ktwo(:));
u3=unique(Kthree(:));

resp1={};
resp2={};
resp3={};
for i=1:4
    pd1 = fitdist(squeeze(K(1,i,:)),'Kernel','Kernel','epanechnikov');
    post1=pdf(pd1,u1);
    resp1{2*i-1}=log10(u1);
    resp1{2*i}=post1;
    
    pd2 = fitdist(squeeze(Ktwo(i,:)).','Kernel','Kernel','epanechnikov');
    post2=pdf(pd2,u2);
    resp2{2*i-1}=log10(u2);
    resp2{2*i}=post2;
    
    pd3 = fitdist(squeeze(Kthree(i,:)).','Kernel','Kernel','epanechnikov');
    post3=pdf(pd3,u3);
    resp3{2*i-1}=log10(u3);
    resp3{2*i}=post3;

end

cf(1);
set(gca,'FontSize',18)
h1=plot(resp1{:});
title('First ATP Binding Site Affinity');
legend(h1,'No IVM','1 IVM','2 IVM','3 IVM')

cf(2);
set(gca,'FontSize',18)
h2=plot(resp2{:});
title('Second ATP Binding Site Affinity');
legend(h2,'No IVM','1 IVM','2 IVM','3 IVM')

cf(3);
set(gca,'FontSize',18)
h3=plot(resp3{:});
title('Third ATP Binding Site Affinity');
legend(h3,'No IVM','1 IVM','2 IVM','3 IVM')


respr1={};
respr2={};
respr3={};
respr4={};
ur1=unique(squeeze([Kone(1,:),Ktwo(1,:),Kthree(1,:)]));
ur2=unique(squeeze([Kone(2,:),Ktwo(2,:),Kthree(2,:)]));
ur3=unique(squeeze([Kone(3,:),Ktwo(3,:),Kthree(3,:)]));
ur4=unique(squeeze([Kone(4,:),Ktwo(4,:),Kthree(4,:)]));
for i=1:3
    pdr1 = fitdist(squeeze(K(i,1,:)),'Kernel','Kernel','epanechnikov');
    postr1=pdf(pdr1,ur1);
    respr1{2*i-1}=log10(ur1);
    respr1{2*i}=postr1;
    
    pdr2 = fitdist(squeeze(K(i,2,:)),'Kernel','Kernel','epanechnikov');
    postr2=pdf(pdr2,ur2);
    respr2{2*i-1}=log10(ur2);
    respr2{2*i}=postr2;
    
    pdr3 = fitdist(squeeze(K(i,3,:)),'Kernel','Kernel','epanechnikov');
    postr3=pdf(pdr3,ur3);
    respr3{2*i-1}=log10(ur3);
    respr3{2*i}=postr3;
    
    pdr4 = fitdist(squeeze(K(i,4,:)),'Kernel','Kernel','epanechnikov');
    postr4=pdf(pdr4,ur4);
    respr4{2*i-1}=log10(ur4);
    respr4{2*i}=postr4;


end

cf(4);
set(gca,'FontSize',18)
hr1=plot(respr1{:});
title('First Row of ATP Binding Site Affinity');
legend(hr1,'1 ATP','2 ATP','3 ATP');

cf(5);
set(gca,'FontSize',18)
hr2=plot(respr2{:});
title('Second Row of ATP Binding Site Affinity');
legend(hr2,'1 ATP','2 ATP','3 ATP');

cf(6);
set(gca,'FontSize',18)
hr3=plot(respr3{:});
title('Third Row of ATP Binding Site Affinity');
legend(hr3,'1 ATP','2 ATP','3 ATP');

cf(7);
set(gca,'FontSize',18)
hr4=plot(respr4{:});
title('Fourth Row of ATP Binding Site Affinity');
legend(hr4,'1 ATP','2 ATP','3 ATP');


end

