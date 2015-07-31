[EC,Erev,Imax,tauoff] = mutantCorrelations(xxp,P2X4free);


cf(335);

subplot(2,3,1);
[f,gof]=fit(EC,tauoff,'poly1');

h=plot(EC(1),tauoff(1),'ok',EC(2:end),tauoff(2:end),'ok',EC,feval(f,EC),'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$EC_{50}$ (Fold Change)','$tau_{off}$ (s)',12)
annotatePlot('A',16);

subplot(2,3,2);
[f,gof]=fit(EC,Erev,'poly1');
h=plot(EC(1),Erev(1),'ok',EC(2:end),Erev(2:end),'ok',EC,feval(f,EC),'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$EC_{50}$ (Fold Change)','$\Delta E_{rev}$ (mV)',12)
annotatePlot('B',16);

subplot(2,3,3);
[f,gof]=fit(Erev,tauoff,'poly1');
h=plot(Erev(1),tauoff(1),'ok',Erev(2:end),tauoff(2:end),'ok',Erev,feval(f,Erev),'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$\Delta E_{rev}$ (mV)','$tau_{off}$ (s)',12)
annotatePlot('C',16);


subplot(2,3,4);
[f,gof]=fit(Imax,EC,'poly1');
h=plot(Imax(1),EC(1),'ok',Imax(2:end),EC(2:end),'ok',Imax,feval(f,Imax),'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$I_{max}$ (Fold Change)','$EC_{50}$ (Fold Change)',12)
annotatePlot('D',16);

subplot(2,3,5);
[f,gof]=fit(Imax,Erev,'poly1');
h=plot(Imax(1),Erev(1),'ok',Imax(2:end),Erev(2:end),'ok',Imax,feval(f,Imax),'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$I_{max}$ (Fold Change)','$\Delta E_{rev}$ (mV)',12)
annotatePlot('E',16);

subplot(2,3,6);
[f,gof]=fit(Imax,tauoff,'poly1');
h=plot(Imax(1),tauoff(1),'ok',Imax(2:end),tauoff(2:end),'ok',Imax,feval(f,Imax),'-k');
set(h(1),'MarkerFaceColor',[0,0,0]);
legend(h(3),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$I_{max}$ (Fold Change)','$tau_{off}$ (s)',12)
annotatePlot('F',16);