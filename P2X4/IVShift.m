function d=IVShift(model,J)
global V E1 E2 L44
f=2;

ramp=struct();
ramp.globals.A=100e-6;
ramp.conditions={20,30,30};
if nargin==1
    ramp.globals.J=3e-6;
else
    ramp.globals.J=J;
end
ramp.globals.IVMon=0;
ramp.globals.IVMoff=40;



setGlobals(ramp.globals)

[T,I,Y]=model.naivePerfusionResponseIV(ramp.conditions{:});

V=-80e-3*2*(rem(T,1/f)*f-1/2)-60e-3;

I=model.getTotalCurrent(Y);

ton=ramp.conditions{1};
tramp=ton+1/f;
Tstim=T(T>ton);
Ystim=Y(T>ton,:);
V=V(T>tramp);
I=I(T>tramp);
T=T(T>tramp)-tramp;

tprev=0;


% hold on;
i=1;

while tprev<T(end)
    
    ind=T>=tprev&T<tprev+1/f;
    tprev=tprev+1/f;
%     plot(V(ind)*1000,I(ind),'LineWidth',2);
    
    if i==1
%      l=fit(V(ind),I(ind),'poly1');
%      e0=coeffvalues(l);
%      e0=-e0(2)/e0(1);
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
    i=1+1;
end

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

V=-60e-3;

% hold off;
% drawnow
d=ef-e0;

end

