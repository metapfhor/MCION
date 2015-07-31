function prestimDoseResponses(model)
global Icontrol I10 I30

I0pred=zeros(7,1);
I1Opred=zeros(7,1);
I3Opred=zeros(7,1);
model.setParams([]);

A=[0.1,0.3,1,3,10,30,100].'*1e-6;

[I0pred]=prestimDoseResponse(0,model);
[I10pred,soln10]=prestimDoseResponse(10,model);
[I30pred,soln30]=prestimDoseResponse(30,model);

%plot 10 s prestimulation 0.1 uM ATP
subplot(3,4,1);

ind=soln10{1}.T<=10;
plotWatchedStatesNoLeg(soln10{1}.T(ind),soln10{1}.Y(ind,:),model);


title('10 s IVM, Prestimulation','Interpreter','tex');
annotatePlot('A',20);

subplot(3,4,2);
hold on
ind=soln10{1}.T>=10;
plotWatchedStatesNoLeg(soln10{1}.T(ind),soln10{1}.Y(ind,:),model);
ylims=ylim();
plot(soln10{1}.T(ind),-soln10{1}.I(ind)*ylims(2)/I30pred(1),'-k');
xlim([10,soln10{1}.T(end)]);
ylim(ylims);
hold off
title('10 s IVM, 0.1 \muM ATP','Interpreter','tex');
annotatePlot('B',20);

subplot(3,4,3);
hold on
ind=soln10{4}.T>=10;
plotWatchedStatesNoLeg(soln10{4}.T(ind),soln10{4}.Y(ind,:),model);
ylims=ylim();
plot(soln10{4}.T(ind),-soln10{4}.I(ind)*ylims(2)/I30pred(4),'-k');
xlim([10,soln10{4}.T(end)]);
ylim(ylims);
hold off
title('10 s IVM, 3 \muM ATP','Interpreter','tex');
annotatePlot('C',20);

subplot(3,4,4);
hold on
ind=soln10{7}.T>=10;
plotWatchedStatesNoLeg(soln10{7}.T(ind),soln10{7}.Y(ind,:),model);
ylims=ylim();
plot(soln10{7}.T(ind),-soln10{7}.I(ind)*ylims(2)/I30pred(7),'-k');
xlim([10,soln10{7}.T(end)]);
ylim(ylims);
hold off
title('10 s IVM, 100 \muM ATP','Interpreter','tex');
annotatePlot('D',20);


subplot(3,4,5);

ind=soln30{1}.T<=30;
plotWatchedStatesNoLeg(soln30{1}.T(ind),soln30{1}.Y(ind,:),model);

title('30 s IVM, Prestimulation','Interpreter','tex');
annotatePlot('E',20);

subplot(3,4,6);
hold on
ind=soln30{1}.T>=30;
plotWatchedStatesNoLeg(soln30{1}.T(ind),soln30{1}.Y(ind,:),model);
ylims=ylim();
plot(soln30{1}.T(ind),-soln30{1}.I(ind)*ylims(2)/I30pred(1),'-k');
xlim([30,soln30{1}.T(end)]);
ylim(ylims);
hold off
title('30 s IVM, 0.1 \muM ATP','Interpreter','tex');
annotatePlot('F',20);

subplot(3,4,7);
hold on
ind=soln30{4}.T>=30;
plotWatchedStatesNoLeg(soln30{4}.T(ind),soln30{4}.Y(ind,:),model);
ylims=ylim();
plot(soln30{4}.T(ind),-soln30{4}.I(ind)*ylims(2)/I30pred(4),'-k');
xlim([30,soln30{4}.T(end)]);
ylim(ylims);
hold off
title('30 s IVM, 3 \muM ATP','Interpreter','tex');
annotatePlot('G',20);

subplot(3,4,8);
hold on
ind=soln30{7}.T>=30;
plotWatchedStatesNoLeg(soln30{7}.T(ind),soln30{7}.Y(ind,:),model);
ylims=ylim();
plot(soln30{7}.T(ind),-soln30{7}.I(ind)*ylims(2)/I30pred(7),'-k');
xlim([30,soln30{7}.T(end)]);
ylim(ylims);
hold off
title('30 s IVM, 100 \muM ATP','Interpreter','tex');
annotatePlot('H',20);




hleg=legend(model.getWatchedLabels());
nl=size(model.getWatchedLabels(),1);
h=.03*nl;
set(hleg,'position',[0.92,0.95-h,0.06,h]);

subplot(3,1,3);
hold on
h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)));
set(h,'LineStyle','none','Marker','o','Color',[0,0,0])
rescon=real(ec50(A./1e-6,mean(I0pred,2)));
hcon=plot(A./1e-6,sigmoid(rescon,A./1e-6),'-k');

h = errorbar(A./1e-6,mean(I10pred,2),sqrt(var(I10pred,1,2)),'-g');
set(h,'LineStyle','none','Marker','o','Color',[0,1,0])
res10=real(ec50(A./1e-6,mean(I10pred,2)));
h10=plot(A./1e-6,sigmoid(res10,A./1e-6),'-g');

h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)),'-r');
set(h,'LineStyle','none','Marker','o','Color',[1,0,0])
res30=real(ec50(A./1e-6,mean(I30pred,2)));
h30=plot(A./1e-6,sigmoid(res30,A./1e-6),'-r');

plot(A./1e-6,Icontrol,':k');
plot(A([1,2,3,4,5,7])./1e-6,I10,':g');
plot(A([1,2,3,4,6,7])./1e-6,I30,':r');
labelPlot('ATP uM','Current (pA)',14.5)
title('Prestimulation Dose Response');

hleg=legend([hcon,h10,h30],['Control: EC50= ' num2str(rescon(3)) ', n=' num2str(rescon(4))],['10s: EC50= ' num2str(res10(3)) ', n=' num2str(res10(4))],['30s, EC50= ' num2str(res30(3)) ', n=' num2str(res30(4))],'Location','SouthEast','Color','none');
set(hleg,'FontSize',12)

xlim([0.1,100])
ylim([0,max([I30pred(7),I10pred(7),I0pred(7)])])
annotatePlot('I',20);

hold off




set(get(h,'Parent'), 'XScale', 'log')

end

