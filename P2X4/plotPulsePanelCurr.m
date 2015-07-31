function h = plotPulsePanel(experiment,model,row)
    fs=10;
    fst=10;
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
%     subplot(4,1,1+(row-1));
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
    
    h=0.01;
    d=0.003;
        
    ton=experiment.conditions{1};
    toff=experiment.conditions{2};
     xmax=x_to_norm(ton(1),experiment.conditions{3});
    for i=1:length(ton)
        [x]=x_to_norm(ton(i),toff(i));
        [y]=y_to_norm(0,0);
        if i==1
              annotation('TextBox',[xmax(2),y(1)-0.008,1,0],'String',[num2str(experiment.globals.A/1e-6) ' \muM ATP'],'VerticalAlignment','baseline','HorizontalAlignment','left','LineStyle','none','FontSize',fst);
        end
        
        annotation('Rectangle',[x(1),y(1)+d,x(2)-x(1),h],'FaceColor',[0,0,0],'FaceAlpha',1,'LineStyle','none');
      
    
    end
    
    if experiment.globals.J~=0
        
%         [x]=x_to_norm(experiment.globals.IVMon,experiment.globals.IVMoff);
%         [y]=y_to_norm(0,0);
%         h=0.008;
%         d=0.003;
%         annotation('Rectangle',[x(1),y(1)+d,x(2)-x(1),h],'FaceColor',[0,0,0],'FaceAlpha',0.6,'LineStyle','none');
%         annotation('TextBox',[x(1),y(1)+d+h,x(2)-x(1),0],'String',[num2str(experiment.globals.J/1e-6) ' \muM IVM'],'VerticalAlignment','baseline','HorizontalAlignment','center','LineStyle','none','FontSize',fs);
  
     [x]=x_to_norm(experiment.globals.IVMon,min(experiment.globals.IVMoff,experiment.conditions{3}));
        [y]=y_to_norm(0,0);
        
        civm=[1,1,1]*0.5;
        annotation('Rectangle',[x(1),y(1)+2*d+h,x(2)-x(1),h],'FaceColor',civm,'FaceAlpha',1,'LineStyle','none');
        annotation('TextBox',[xmax(2),y(1)-0.008+2*d+h,x(2)-x(1),0],'String',[num2str(experiment.globals.J/1e-6) ' \muM IVM'],'VerticalAlignment','baseline','HorizontalAlignment','left','LineStyle','none','FontSize',fst,'Color',civm);

    else
        
%         [x]=x_to_norm(experiment.globals.IVMon,experiment.globals.IVMoff);
%         [y]=y_to_norm(0,0);
%         h=0.008;
%         d=0.003;
%         annotation('TextBox',[x(1),y(1)+d+h,x(2)-x(1),0],'String',[num2str(experiment.globals.J/1e-6) ' \muM IVM'],'VerticalAlignment','baseline','HorizontalAlignment','center','LineStyle','none','FontSize',fs);

    end
    
 
end