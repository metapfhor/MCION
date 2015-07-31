function [e0,ef]=plotIVCurve(experiment,model)
global V E1 E2
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

subplot(1,2,1);

hold on

i=1;
step=1;

while tprev<T(end)
    
    ind=T>=tprev&T<tprev+1/f;
    tprev=tprev+step/f;
    plot(V(ind)*1000,I(ind));
    
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
    i=1+1;
end

labelPlot('Voltage (mV)','Current (pA)');
annotatePlot('A',20);
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

subplot(2,2,2);
plotWatchedStates(Tstim-20,Ystim,model);
% plot(Tstim,[model.getOpen(Ystim), model.getDilated(Ystim)],'LineWidth',2);
% xlabel('Time (s)');
% ylabel('Fraction of Population')
% legend('Open','Dilated');
xlabel('');
annotatePlot('B',20);
V=-60e-3;
E10=E1;
E20=E2;
E1=0;
E2=0;

global g1 g2
% Istim=model.getTotalCurrent(Ystim);
gstim=g1*model.getOpen(Ystim)+g2*model.getDilated(Ystim);
% I = 10.^12*(g1*(Y(:,5)+Y(:,6)).*(V-E1)+g2*(Y(:,7)+Y(:,8)).*(V-E2));
E1=E10;
E2=E20;
subplot(2,2,4);
plot(Tstim-20,gstim);
labelPlot('Time (s)','Total Conductance (S)',18);
annotatePlot('C',20);
% tightfig(gcf)
end

