function h = plotWatchedStates(T,Y,I,f,model)
    hold on
    hstates=plotyy(T,model.getWatchedStates(Y),T,-I);

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

    ylims=ylim();
    plot(T,-I*ylims(2)/f,'-k');
    pos=get(gca,'position');
    ax2 = axes('Position',pos,...
    'XAxisLocation','top',...
    'YAxisLocation','right',...
    'Color','none');
    set(ax2,'XTickLabels','','Xtick',[],'FontSize',14.5)
    hold off
end