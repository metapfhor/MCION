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
    twait=4;
    resp={};
    for i=1:2
        ind=T>=ton(i)&T<ton(i)+twait;
        resp{3*i-2}=T(ind)-ton(i);
        resp{3*i-1}=I(ind)/abs(min(I(ind)));
        resp{3*i}='-k';
    end
    for i=3:7

        ind=T>=ton(i)&T<ton(i)+twait;
        Itemp=I(ind);
        Itemp=Itemp-Itemp(1);
        resp{3*i-2}=T(ind)-ton(i);
        resp{3*i-1}=Itemp/abs(min(Itemp));
        resp{3*i}='-';
    end

    hold on;
    
    hk=plot(resp{1:6});
    set(hk,'LineWidth',3);
    
    
    hkg = hggroup;

    
    set(hk,'Parent',hkg)
%     set(hb,'Parent',hbg)
    % Include these hggroups in the legend:
    set(get(get(hkg,'Annotation'),'LegendInformation'),...
        'IconDisplayStyle','on'); 
    
    
    hb=plot(resp{7:end});
    set(hb,'LineWidth',3);



%     set(get(get(hbg,'Annotation'),'LegendInformation'),...
%         'IconDisplayStyle','on'); 

%    legend('IVM-','IVM+(1)','IVM+(2)','IVM+(3)','IVM+(4)','IVM+(5)','IVM+(6)')
legend('IVM-','IVM+(1)','IVM+(2)','IVM+(3)','IVM+(4)','IVM+(5)')

    labelPlot('Time (s)','Normalized Current',14)
    axis tight;
    drawnow;
end