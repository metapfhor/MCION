function [e0,ef]=plotIVCurve(experiment,model)
global V E1 E2 g1 g2
f=2;
% model.setParams([]);
setGlobals(experiment.globals)
V=-60e-3;

[T,I,Y]=model.naivePerfusionResponseIV(experiment.conditions{:});

open=model.getOpen(Y);
dilated=model.getDilated(Y);

Oi=open(find(T>=20+2/f,1,'first'));
Of=open(end);

Di=dilated(find(T>=20+2/f,1,'first'));
Df=dilated(end);

gO=g1;
gD=g2;

Ei=-38.2e-3;
Ef=-27.4e-3;

E1 = -(Ef*gO*Of*Di+Ef*gD*Df*Di-Df*Ei*gO*Oi-Df*Ei*gD*Di)/((-Of*Di+Oi*Df)*gO)
E2 = (-Of*Ei*gO*Oi-Of*Ei*gD*Di+Oi*Ef*gO*Of+Oi*Ef*gD*Df)/(gD*(-Of*Di+Oi*Df))

V=-80e-3*2*(rem(T,1/f)*f-1/2)-60e-3;

I=model.getTotalCurrent(Y);

E1=0;E2=0;

ton=experiment.conditions{1};
tramp=ton+1/f;
Tstim=T(T>ton);
Ystim=Y(T>ton,:);
V=V(T>tramp);
I=I(T>tramp);
T=T(T>tramp)-tramp;

tprev=1/f;


hold on

i=1;
skip=2;
while tprev<T(end)

    
    
    
    if mod(i,skip)==0 || i==1 || tprev>=T(end)
        ind=T>=tprev&T<tprev+1/f;
        plot(V(ind)*1000,I(ind),'-k');
    end
    tprev=tprev+1/f;
    if i==1
%      l=fit(V(ind),I(ind),'poly1');
%      e0=coeffvalues(l);
%      e0=-e0(2)/e0(1);
%      disp(e0/1e-3)
    Icurr=I(ind);
    Vcurr=V(ind);
    
    indpos=find(Icurr>0);
    indpos=indpos(end);
    indneg=find(Icurr<0);
    indneg=indneg(1);
    
    Ipos=Icurr(indpos);
    Vpos=Vcurr(indpos);
    Ineg=Icurr(indneg);
    Vneg=Vcurr(indneg);
    m=(Ipos-Ineg)/(Vpos-Vneg);
    b=Ineg-m*Vneg;
    e0=-b/m;
    end
    i=i+1;
end

labelPlot('Voltage (mV)','Current (pA)')
% 
%      l=fit(V(ind),I(ind),'poly1');
%      ef=coeffvalues(l);
%      ef=-ef(2)/ef(1);
%      disp(ef/1e-3)
    Icurr=I(ind);
    Vcurr=V(ind);
    
    indpos=find(Icurr>0);
    indpos=indpos(end);
    indneg=find(Icurr<0);
    indneg=indneg(1);
    
    Ipos=Icurr(indpos);
    Vpos=Vcurr(indpos);
    Ineg=Icurr(indneg);
    Vneg=Vcurr(indneg);
    m=(Ipos-Ineg)/(Vpos-Vneg);
    b=Ineg-m*Vneg;
    ef=-b/m;


hold off
V=-60e-3;
end

