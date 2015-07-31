function  correlationPanels(xxp,model)
X=unravelChain(xxp);
f=chainUnifSampler(X);

nx=20;

Xsample=zeros(size(X,1),nx);
EC=zeros(nx,1);
Erev=zeros(nx,1);
Imax=zeros(nx,1);
tauoff=zeros(nx,1);
for i=1:nx
    [EC(i),Erev(i),Imax(i),tauoff(i)]=correlationMeasurement(f(),model);
end

cf(333);

subplot(2,3,1);
[f,gof]=fit(EC,tauoff,'poly1');
h=plot(EC,tauoff,'ok',EC,feval(f,EC),'-k');
legend(h(2),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$EC_{50}$ (Fold Change)','$tau_{off}$ (s)',12)
annotatePlot('A',16);

subplot(2,3,2);
[f,gof]=fit(EC,Erev,'poly1');
h=plot(EC,Erev,'ok',EC,feval(f,EC),'-k');
legend(h(2),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$EC_{50}$ (Fold Change)','$\Delta E_{rev}$ (mV)',12)
annotatePlot('B',16);

subplot(2,3,3);
[f,gof]=fit(Erev,tauoff,'poly1');
h=plot(Erev,tauoff,'ok',Erev,feval(f,Erev),'-k');
legend(h(2),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$\Delta E_{rev}$ (mV)','$tau_{off}$ (s)',12)
annotatePlot('C',16);


subplot(2,3,4);
[f,gof]=fit(Imax,EC,'poly1');
h=plot(Imax,EC,'ok',Imax,feval(f,Imax),'-k');
legend(h(2),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$I_{max}$ (Fold Change)','$EC_{50}$ (Fold Change)',12)
annotatePlot('D',16);

subplot(2,3,5);
[f,gof]=fit(Imax,Erev,'poly1');
h=plot(Imax,Erev,'ok',Imax,feval(f,Imax),'-k');
legend(h(2),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$I_{max}$ (Fold Change)','$\Delta E_{rev}$ (mV)',12)
annotatePlot('E',16);

subplot(2,3,6);
[f,gof]=fit(Imax,tauoff,'poly1');
h=plot(Imax,tauoff,'ok',Imax,feval(f,Imax),'-k');
legend(h(2),['R = ' num2str(gof.rsquare)])
labelPlotLatex('$I_{max}$ (Fold Change)','$tau_{off}$ (s)',12)
annotatePlot('F',16);

end

