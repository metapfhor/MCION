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

%     s=char(texify(cellstr(model.getWatchedLabels()),0))

    hleg=legend(model.getWatchedLabels());
    set(hleg,'Location','NorthEast');
    labelPlot('Time (s)','Fraction of Population',18);
    pos=get(gca,'Position');
    posleg=get(hleg,'Position');
    set(hleg,'Position',[pos(1)+pos(3)+0.025 pos(2)+(pos(4)-posleg(4)) posleg(3) posleg(4)])
    axis tight
end