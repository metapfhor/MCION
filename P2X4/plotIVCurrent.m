function [e0,ef]=plotIVCurrent(experiment,model)
global V
f=2;
model.setParams([]);
setGlobals(experiment.globals)

[T,I,Y]=model.naivePerfusionResponseIV(experiment.conditions{:});

V=-80e-3*2*(rem(T,1/f)*f-1/2)-60e-3;

I=model.getTotalCurrent(Y);

ton=experiment.conditions{1};
tramp=ton+1/f;
Tstim=T(T>ton);
Ystim=Y(T>ton,:);
V=V(T>tramp);
I=I(T>tramp);
T=T(T>tramp)-tramp;

tprev=0;



hold on

i=1;

while tprev<T(end)
    
    ind=T>=tprev&T<tprev+1/f;
    tprev=tprev+1/f;
    plot(V(ind)*1000,I(ind),'LineWidth',2);
    
    if i==1
     l=fit(V(ind),I(ind),'poly1');
     e0=coeffvalues(l);
     e0=-e0(2)/e0(1);
%      disp(e0/1e-3)
    
    end
    i=1+1;
end

labelPlot('Voltage (mV)','Current (pA)',20)

     l=fit(V(ind),I(ind),'poly1');
     ef=coeffvalues(l);
     ef=-ef(2)/ef(1);
%      disp(ef/1e-3)


V=-60e-3;
% tightfig(gcf)
end

