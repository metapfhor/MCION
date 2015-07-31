cf(91);




subplot(2,1,1);
plotNaiveCurrent(prol2noIVM,P2X4free);
annotatePlot('A',28);


subplot(2,1,2);
plotNaiveCurrent(prol3IVM,P2X4free);
annotatePlot('B',28);

cf(92);




subplot(2,1,1);

plotNaiveCurrent(prol33IVM,P2X4free);
annotatePlot('A',28);


subplot(2,1,2);
plotIVMAction(P2X4free);
annotatePlot('B',28);



[x]=x_to_norm(prol3IVMp.globals.IVMon,prol3IVMp.globals.IVMoff);
[y]=y_to_norm(0,0);
h=0.008;
d=0.003;
annotation('Rectangle',[x(1),y(1)+d,x(2)-x(1),h],'FaceColor',[0,0,0],'FaceAlpha',0.6,'LineStyle','none');
annotation('TextBox',[x(1),y(1)+d+h,x(2)-x(1),0],'String',[num2str(prol3IVMp.globals.J/1e-6) ' \muM IVM'],'VerticalAlignment','baseline','HorizontalAlignment','center','LineStyle','none','FontSize',16);
