function h = plotPulsePanel(experiment,model,row)
    fs=8;
	model.setParams([]);
    setGlobals(experiment.globals);
    if isfield(experiment,'response')==0
        if isfield(experiment,'DoublePulse')==0
            [T, I, Y] = model.naivePerfusionResponse(experiment.conditions{:});
%               [T,I,Y]=ProlFuncCallerP2X4(experiment.conditions{:},experiment.data(:,1));
        else
            [T,I,Y]=ProlFuncCallerP2X4(experiment.conditions{:},model);
        end
    else
%         [T, I, Y] = feval([experiment.response model.name],experiment.conditions{:},experiment.data(:,1));
%         [T, I, Y] = model.naivePerfusionResponse(experiment.conditions{:},experiment.data(:,1));
          [T,I,Y]=PulseFuncCallerSSEP2X4(experiment.conditions{:},model);
    end
    subplot(4,2,1+(row-1)*2);
    if isfield(experiment, 'data')==1
        h=plot(experiment.data(:,1),experiment.data(:,2),'-.b');
        set(h,'linewidth',3);
%         if isfield(experiment,'response')==0
%         axis([0 max(T) -5000 -0]);
%         end
    end
	hold on;
		h=plot(T,I,'-r');%Change the multiplier on I to the heterogeneity parameter.
		set(h,'linewidth',1.5);
	hold off;
	labelPlot('','Current (pA)',fs);
    if isfield(experiment, 'data')==1 && row==1
        hleg=legend('Experimental','Markov Model','Location','Best');
        
    else
        if row==1
            legend('Simulation');
        end
    end
    axis tight
    
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
    
 
    
    
	subplot(4,2,2+(row-1)*2);
	
	plot(T,[model.getOpen(Y), model.getDilated(Y)],'LineWidth',1.5);
        axis tight
%     plot(T,[Y(:,1) Y(:,13) Y(:,15) Y(:,17) Y(:,7)+Y(:,8)],'LineWidth',2); %Y(:,9)+Y(:,10) Y(:,11)+Y(:,fs) Y(:,13) Y(:,15) Y(:,17)],'LineWidth',2);
% 	
%     plot(T,[Y(:,9)+Y(:,10) Y(:,11)+Y(:,fs) Y(:,3) Y(:,5) Y(:,6)],'LineWidth',2);
    if row==1
        legend('Open','Dilated','Location','Best');
    end
%     legend('C1','D1','D3','Z','Q1+Q2')%,
%     legend('Q3+Q4','Q5+Q6','C3','C5','C6');
	labelPlot('Time (s)','Fraction of Population',fs);
end