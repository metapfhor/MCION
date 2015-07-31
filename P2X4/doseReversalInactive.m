global E1 E2   mu epsilon delta 
load('good_EC50_okay_kinetics_and_amplitudes.mat');
P2X4StackDeMix3.setParams([]);


J=logspace(-7,-5,30);

dE1=zeros(size(J));
dE2=zeros(size(J));
dE7=zeros(size(J));
% dEA=zeros(size(J));


for i=1:length(J)

    load('inactive_prelim.mat');
    P2X4Inact1.setParams([]);
    E1=-43e-3;
    E2=-15.5e-3;
    dE1(i)=IVShift(P2X4Inact1,J(i))/1e-3;
    

    load('inactive_prelim.mat');
    P2X4Inact2.setParams([]);
    E1=-43e-3;
    E2=-15.5e-3;

    dE2(i)=IVShift(P2X4Inact2,J(i))/1e-3;
    
    load('inactive_prelim.mat');
    P2X4StackDeMix7.setParams([]);
    E1=-43e-3;
    E2=-15.5e-3;

    dE7(i)=IVShift(P2X4StackDeMix7,J(i))/1e-3;
    
end

cf(77);
J=J/1e-6;
h=semilogx(J,dE1,J,dE2,J,dE7,[0.3,3,10],[5.6,10.8,16.3],'o');
set(h,'linewidth',2)
set(gca,'xticklabels',{'0.1','1','10'});

labelPlot('IVM (\muM)','\DeltaE_{rev} (mV)',18);
legend('First IVM Row Dilates','Second IVM Row Dilates','Third IVM Row Dilates','2014 Paper (Model)','2014 Paper (Data)')
