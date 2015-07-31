function h = plotNaiveResponse(experiment,model)
    global P2X4Inact2block1 P2X4Inact2block3 P2X4Inact2block10
    setGlobals(experiment.globals);
    model.setParams([]);
    setGlobals(experiment.globals);
    model.overrideGlobals();

    [T,I,Y]=P2X4response(experiment,model);
    
        setGlobals(experiment.globals);
    model.setParams([]);
    setGlobals(experiment.globals);
    model.overrideGlobals();
    
    
    [T1,I1]=P2X4response(experiment,P2X4Inact2block1);
    
        setGlobals(experiment.globals);
    model.setParams([]);
    setGlobals(experiment.globals);
    model.overrideGlobals();
    
    [T3,I3]=P2X4response(experiment,P2X4Inact2block3 );
    
    
    setGlobals(experiment.globals);
    model.setParams([]);
    setGlobals(experiment.globals);
    model.overrideGlobals();
    [T10,I10]=P2X4response(experiment,P2X4Inact2block10);
    
%     subplot(2,1,1);
%     if isfield(experiment, 'data')==1
%         if isfield(experiment,'mean')
%             
%             m=experiment.mean;
%             v=experiment.var;
%             
%             h=plot(experiment.data(:,1),experiment.data(:,2),'-r',experiment.data(:,1),m,'-g',experiment.data(:,1),m+sqrt(v),':g',experiment.data(:,1),m-sqrt(v),':g');
%             set(h,'LineWidth',2);
%             
%         else
%                 h=plot(experiment.data(:,1),experiment.data(:,2),'-r');
%                 set(h,'linewidth',2);
%         end
% 
% 
%     end
	hold on;
		h=plot(T,I,'-b',T1,I1,'-g',T3,I3,'-r',T10,I10,'-k');%Change the multiplier on I to the heterogeneity parameter.
		legend(h,'Full Model','Block_{1}','Block_{2}','Block_{3}')
        set(h,'linewidth',2);
        axis tight;
	hold off;
	labelPlot('','Current (pA)',18);
    if isfield(experiment, 'data')==1
        if isfield(experiment,'mean')==1
            
%             legend('Experimental','Mean','Mean+Std','Mean-Std','Simulation','Location','NorthEast');
        else
%             legend('Experimental','Simulation','Location','NorthEast');
        end
        
    else
        legend('Simulation');
    end
% 	subplot(2,1,2);
%     plotWatchedStates(T,Y,model);
    axis tight;
% 
%     hstates=plot(T,model.getWatchedStates(Y),'LineWidth',2);
%     
%     if length(hstates)>7
%         set(hstates(8:min(length(hstates),16)),'LineStyle','--');
%     end
%     
%     for i=1:length(hstates)
%         
%     end
% 
%     hleg=legend(model.getWatchedLabels());
%     set(hleg,'Location','NorthEast');
%     


% 	labelPlot('Time (s)','Fraction of Population',18);
    drawnow;
end