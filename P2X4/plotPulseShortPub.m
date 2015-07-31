function h = plotPulseShort(experiment,model)
    
    model.setParams([]);

    ton=experiment.conditions{1};
    toff=ton+2;
    experiment.conditions{2}=toff;
    experiment.globals.IVMoff=toff(8);
    setGlobals(experiment.globals);
    [T,I,Y]=P2X4response(experiment,model);
    ton=experiment.conditions{1};
    toff=experiment.conditions{2};
    %     subplot(2,1,1);
    cont=4;
    resp={};
    hold on
    plot([0 0],[0 0],'w-');
    for i=1:1
        ind=T>=ton(i)&T<=ton(i)+cont;
        Tcurr=T(ind);
        Tcurr=Tcurr-Tcurr(1);
        Icurr=I(ind);
        Icurr=I(ind);
        Icurr=Icurr-Icurr(1);
        [Imax,ind]=max(abs(Icurr));
        tcrit004(i)=Tcurr(ind);
        ind=find(Icurr>=-Imax/2&Tcurr<Tcurr(ind));
        thalf004(i)=Tcurr(ind(end));
        Icurr=Icurr/Imax;
        plot(Tcurr,Icurr,'Color',[0 0 0],'LineWidth',3)
    end
    plot([0 0],[0 0],'w-');
    colors = {[0 4.47e-01 7.41e-01],
    [8.5e-01 3.25e-01 9.8e-02],
    [9.2900e-01   6.9400e-01   1.2500e-01],
    [4.9400e-01   1.8400e-01   5.5600e-01],
    [4.6600e-01   6.7400e-01   1.8800e-01],
    [3.0100e-01   7.4500e-01   9.3300e-01]};

    for i=3:7
        ind=T>=ton(i)&T<=ton(i)+cont;
        Tcurr=T(ind);
        Tcurr=Tcurr-Tcurr(1);
        Icurr=I(ind);
        Icurr=Icurr-Icurr(1);
        [Imax,ind]=max(abs(Icurr));
        tcrit004(i)=Tcurr(ind);
        ind=find(Icurr>=-Imax/2&Tcurr<Tcurr(ind));
        thalf004(i)=Tcurr(ind(end));
        Icurr=Icurr/Imax;
        plot(Tcurr,Icurr,'Color',colors{i-2},'LineWidth',3)
    end

    hold off;
    

    hleg=legend('','Pulse 1','','Pulse 1','Pulse 2','Pulse 3','Pulse 4','Pulse 5','Location','Best');
    
    pos=get(gca,'Position');
    posleg=get(hleg,'Position');
    
    set(hleg,'Position',[pos(1)+pos(3)+0.01 pos(2) 1-0.005-(pos(1)+pos(3)+0.01) pos(4)])
    posleg=get(hleg,'Position');
    
    
    annotation('textbox','String','IVM Absent','LineStyle','none','FontSize',10,'Position',[posleg(1) posleg(2)-0.004 posleg(3)+0.005 posleg(4)])
    annotation('textbox','String',[ num2str(experiment.globals.J/1e-6) ' \muM IVM Present'],'LineStyle','none','FontSize',10,'Position',[posleg(1) posleg(2)-0.04 posleg(3)+0.05 posleg(4)]);

    
    labelPlot('Time (s)','Normalized Current',10)
    axis tight;
    drawnow;
end