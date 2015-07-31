global E1 E2   mu epsilon delta 
load('good_EC50_okay_kinetics_and_amplitudes.mat');
P2X4StackDeMix3.setParams([]);


J=logspace(-7,-5,30);

dE3=zeros(size(J));
dE5=zeros(size(J));
dE55=zeros(size(J));
dEA=zeros(size(J));


for i=1:length(J)

    load('good_EC50_okay_kinetics_and_amplitudes.mat');
    P2X4StackDeMix3.setParams([]);
    E1=-63e-3;
    E2=-27e-3;
    dE3(i)=IVShift(P2X4StackDeMix3,J(i))/1e-3;
    

    load('good_EC50_okay_kinetics_and_amplitudes_2.mat');
    P2X4StackDeMix5.setParams([]);
    E1=-43e-3;
    E2=-15.5e-3;

    dE5(i)=IVShift(P2X4StackDeMix5,J(i))/1e-3;
    
    load('good_EC50_okay_kinetics_and_amplitudes_2.mat');
    P2X4StackDeMix5alt.setParams([]);
    E1=-43e-3;
    E2=-15.5e-3;

    dE55(i)=IVShift(P2X4StackDeMix5alt,J(i))/1e-3;
    
    paperP2X4Params();
    dEA(i)=IVShift(anmarP2X4,J(i))/1e-3;

end

cf(77);
J=J/1e-6;
h=semilogx(J,dE3,J,dE5,J,dE55,J,dEA,[0.3,3,10],[5.6,10.8,16.3],'o');
set(h,'linewidth',2)
set(gca,'xticklabels',{'0.1','1','10'});

labelPlot('IVM (\muM)','\DeltaE_{rev} (mV)',18);
legend('First IVM Row Dilates','Second IVM Row Dilates','Third IVM Row Dilates','2014 Paper (Model)','2014 Paper (Data)')
