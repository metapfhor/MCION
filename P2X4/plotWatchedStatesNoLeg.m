function h = plotWatchedStates(T,Y,model)
    hstates=plot(T,model.getWatchedStates(Y),'LineWidth',2);

    if length(hstates)>7
        set(hstates(8:min(length(hstates),14)),'LineStyle','--');
    end
    
    if length(hstates)>14
        set(hstates(15:min(length(hstates),22)),'LineStyle','-.');
    end

    if length(hstates)>21
        set(hstates(22:min(length(hstates),30)),'LineStyle',':');
    end
    xlim([0,T(end)])
   

%     hleg=legend(model.getWatchedLabels());
%     set(hleg,'Location','NorthEast');
    labelPlot('Time (s)','Fraction of Population',14.5);
end