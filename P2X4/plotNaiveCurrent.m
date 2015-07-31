function h = plotNaiveResponse(experiment,model)
    
    setGlobals(experiment.globals);
    model.setParams([]);
    setGlobals(experiment.globals);
    model.overrideGlobals();

    [T,I,Y]=P2X4response(experiment,model);
    if isfield(experiment, 'data')==1
     
    h=plot(experiment.data(:,1),experiment.data(:,2),'Color',[0 4.47e-01 7.41e-01]);
    set(h,'linewidth',3);
      
%     xlim([0,experiment.data(end,1)]);
    axis tight;

    end
	hold on;
		h=plot(T,I,'Color',[8.5e-01 3.25e-01 9.8e-02]);%Change the multiplier on I to the heterogeneity parameter.
		set(h,'linewidth',2);
	hold off;
	labelPlot('','Current (pA)',14);
    if isfield(experiment, 'data')==1
 
            legend('Experimental','Markov Model','Location','Best');

        
    else
%         legend('Simulation');
    end
    
    
    
    h=0.01;
    d=0.003;
    fst=12;
        
    ton=experiment.conditions{1};
    toff=experiment.conditions{2};
     xmax=x_to_norm(ton(1),experiment.conditions{3});
    for i=1:length(ton)
        [x]=x_to_norm(ton(i),toff(i));
        [y]=y_to_norm(0,0);
        if i==1
              annotation('TextBox',[x(1),y(1)+d+h,x(2)-x(1),0],'String',[num2str(experiment.globals.A/1e-6) ' \muM ATP'],'VerticalAlignment','baseline','HorizontalAlignment','center','LineStyle','none','FontSize',fst);
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