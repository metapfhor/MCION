global pMax pMin

load('good_EC50_okay_kinetics_and_amplitudes_2.mat');
P2X4StackDeMix5.setParams([]);



pMax=containers.Map();
pMin=containers.Map();


[x0,bounds] = buildInitialParams();


[EC,Erev,Imax,tauoff] = mutantSpecificCorrelations3(x0,P2X4StackDeMix5);

EC=EC(~isnan(EC));
Erev=Erev(~isnan(Erev));
Imax=Imax(~isnan(Imax));
tauoff=tauoff(~isnan(tauoff));

cf(335);

subplot(2,3,1);
% [f,gof]=fit(EC,tauoff,'poly1');
[b0,b1,p,R]=regInf(EC,tauoff);

h=plot(EC(1),tauoff(1),'ok',EC(2:end),tauoff(2:end),'ok',EC,b0+b1*EC,'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(abs(R)) ],'Location','Best');
labelPlotLatex('$EC_{50}$ (Fold Change)','$\tau_{off}$ (s)',12)
annotatePlot('A',16);

subplot(2,3,2);
% [f,gof]=fit(EC,Erev,'poly1');
[b0,b1,p,R]=regInf(EC,Erev);

h=plot(EC(1),Erev(1),'ok',EC(2:end),Erev(2:end),'ok',EC,b0+b1*EC,'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(abs(R))],'Location','Best');
labelPlotLatex('$EC_{50}$ (Fold Change)','$\Delta E_{rev}$ (mV)',12)
annotatePlot('B',16);

subplot(2,3,3);
% [f,gof]=fit(Erev,tauoff,'poly1');
[b0,b1,p,R]=regInf(Erev,tauoff);

h=plot(Erev(1),tauoff(1),'ok',Erev(2:end),tauoff(2:end),'ok',Erev,b0+b1*Erev,'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(abs(R))],'Location','Best')
labelPlotLatex('$\Delta E_{rev}$ (mV)','$\tau_{off}$ (s)',12)
annotatePlot('C',16);


subplot(2,3,4);
% [f,gof]=fit(Imax,EC,'poly1');
[b0,b1,p,R]=regInf(Imax,EC);

h=plot(Imax(1),EC(1),'ok',Imax(2:end),EC(2:end),'ok',Imax,b0+b1*Imax,'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(abs(R))],'Location','Best');
labelPlotLatex('$I_{max}$ (Fold Change)','$EC_{50}$ (Fold Change)',12)
annotatePlot('D',16);

subplot(2,3,5);
% [f,gof]=fit(Imax,Erev,'poly1');
[b0,b1,p,R]=regInf(Imax,Erev);

h=plot(Imax(1),Erev(1),'ok',Imax(2:end),Erev(2:end),'ok',Imax,b0+b1*Imax,'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(abs(R))],'Location','Best');
labelPlotLatex('$I_{max}$ (Fold Change)','$\Delta E_{rev}$ (mV)',12)
annotatePlot('E',16);

subplot(2,3,6);
% [f,gof]=fit(Imax,tauoff,'poly1');
[b0,b1,p,R]=regInf(Imax,tauoff);

h=plot(Imax(1),tauoff(1),'ok',Imax(2:end),tauoff(2:end),'ok',Imax,b0+b1*Imax,'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(abs(R))],'Location','Best');
labelPlotLatex('$I_{max}$ (Fold Change)','$\tau_{off}$ (s)',12)
% annotatePlot('F',16);

