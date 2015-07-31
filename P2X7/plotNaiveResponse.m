function h = plotNaiveResponse(experiment,model,n,m,j,k)
    setGlobals(experiment.globals);
	model.setParams([]);
    setGlobals(experiment.globals);


	[T, I, Y] = model.naivePerfusionResponse(experiment.conditions{:});
    
    if nargin==6
        subplot(n,m,j);
    else
        subplot(2,1,1);
    end
    

    if isfield(experiment,'data')==1
        if ndims(experiment.data)==3
            hold on
%             for i=1:size(experiment.data,3)
%                 h=plot(experiment.data(:,1,i),experiment.data(:,2,i),'-r');
%                 set(h,'linewidth',2);
%             end
            h=plot(experiment.data(:,1,1),experiment.mean,'Color',[0,0.7,0]);
            set(h,'linewidth',3);
            err=sqrt(2*experiment.var);
            h=plot(experiment.data(:,1,1),[experiment.mean+err,experiment.mean-err],'Color',[0,0.7,0],'LineStyle','-.','LineWidth',1);
            hold off
        else
            h=plot(experiment.data(:,1),experiment.data(:,2),'-r');
            set(h,'linewidth',2);
        end
    end
	hold on;
		h=plot(T,I);
		set(h,'linewidth',2);
	hold off;
	labelPlot('','Current (pA)',18);
%     if nargin~=6 || j==1
%         if isfield(experiment,'data')==1
%             legend('Experimental','Simulation');
%         else
%             legend('Simulation');
%         end
%     end
    
    if nargin==6
        subplot(n,m,k);
    else
		subplot(2,1,2);
    end
	
	%plot(T,[model.getOpen(Y), model.getDilated(Y)]);
    hold on
    plot(T,model.getWatchedStates(Y))
%    plot(T,[Y(:,3),Y(:,4),Y(:,5),Y(:,12),Y(:,13)]);
%   plot(T,[Y(:,3),Y(:,4),Y(:,5)]);
%         h=plot(T,[Y(:,5),Y(:,6),Y(:,7),Y(:,8)]);
         set(h,'LineStyle','-');
%         h=plot(T,[Y(:,15),Y(:,16)]);% ,14),Y(:,1]);
%       set(h,'LineStyle',':')
%
       
       hold off
    if nargin~=6 || j==1
       legend(model.getWatchedLabels())
%         legend('O1','O2','O3','S3','S4');%,'S3','S4');
      %  legend('Open','Dilated');
    end
	labelPlot('Time (s)','Fraction of Population',18);
end