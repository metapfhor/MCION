function h = plotNaiveResponse(experiment,model)
    fs=16;
    setGlobals(experiment.globals);
    model.setParams([]);
    setGlobals(experiment.globals);
    model.overrideGlobals();

    [T,I,Y]=P2X4response(experiment,model);
    
    subplot(2,1,1);

		h=plot(T,I);%Change the multiplier on I to the heterogeneity parameter.
		set(h,'linewidth',2);
        axis tight;

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
    
    if experiment.globals.J~=0
        
        [x]=x_to_norm(experiment.globals.IVMon,experiment.globals.IVMoff);
        [y]=y_to_norm(0,0);
        h=0.008;
        d=0.003;
        annotation('Rectangle',[x(1),y(1)+d,x(2)-x(1),h],'FaceColor',[0,0,0],'FaceAlpha',0.6,'LineStyle','none');
        annotation('TextBox',[x(1),y(1)+d+h,x(2)-x(1),0],'String',[num2str(experiment.globals.J/1e-6) ' \muM IVM'],'VerticalAlignment','baseline','HorizontalAlignment','center','LineStyle','none','FontSize',fs);
    else
        
        [x]=x_to_norm(experiment.globals.IVMon,experiment.globals.IVMoff);
        [y]=y_to_norm(0,0);
        h=0.008;
        d=0.003;
        annotation('TextBox',[x(1),y(1)+d+h,x(2)-x(1),0],'String',[num2str(experiment.globals.J/1e-6) ' \muM IVM'],'VerticalAlignment','baseline','HorizontalAlignment','center','LineStyle','none','FontSize',fs);

    end
    
    annotatePlot('A',20);
    
	subplot(2,1,2);
    if isfield(experiment, 'data')==1
        if isfield(experiment,'mean')
            
            m=experiment.mean;
            v=experiment.var;
            
            h=plot(experiment.data(:,1),experiment.data(:,2),'-r',experiment.data(:,1),m,'-g',experiment.data(:,1),m+sqrt(v),':g',experiment.data(:,1),m-sqrt(v),':g');
            set(h,'LineWidth',2);
            
        else
                h=plot(experiment.data(:,1),experiment.data(:,2),'-r');
                set(h,'linewidth',2);
        end


    end
    axis tight;
    

    
    
    if experiment.globals.J~=0
        
        [x]=x_to_norm(experiment.globals.IVMon,experiment.globals.IVMoff);
        [y]=y_to_norm(0,0);
        h=0.008;
        d=0.003;
        annotation('Rectangle',[x(1),y(1)+d,x(2)-x(1),h],'FaceColor',[0,0,0],'FaceAlpha',0.6,'LineStyle','none');
        annotation('TextBox',[x(1),y(1)+d+h,x(2)-x(1),0],'String',[num2str(experiment.globals.J/1e-6) ' \muM IVM'],'VerticalAlignment','baseline','HorizontalAlignment','center','LineStyle','none','FontSize',fs);
    else
        
        [x]=x_to_norm(experiment.globals.IVMon,experiment.globals.IVMoff);
        [y]=y_to_norm(0,0);
        h=0.008;
        d=0.003;
        annotation('TextBox',[x(1),y(1)+d+h,x(2)-x(1),0],'String',[num2str(experiment.globals.J/1e-6) ' \muM IVM'],'VerticalAlignment','baseline','HorizontalAlignment','center','LineStyle','none','FontSize',fs);

    end
    
     annotatePlot('B',20);
    
    
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

	labelPlot('Time (s)','Current (pA)',18);
    drawnow;
end