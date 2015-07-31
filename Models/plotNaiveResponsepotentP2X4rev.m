function h = plotNaiveResponsepotentP2X4rev(experiment)
	setParams([]);
	[T, I, Y] = naivePerfusionResponse(experiment.conditions{:});
	subplot(2,1,1);
	h=plot(experiment.data(:,1),experiment.data(:,2),'-r');
	set(h,'linewidth',2);
	hold on;
		h=plot(T,I);
		set(h,'linewidth',2);
	hold off;
	labelPlot('','Current (pA)',18);
	legend('Experimental','Simulation');
	subplot(2,1,2);
	
	plot(T,[Y(:,17)+Y(:,18)+Y(:,19)+Y(:,20)+Y(:,21)+Y(:,22)+Y(:,23)+Y(:,24), Y(:,25)+Y(:,26)+Y(:,27)+Y(:,28)+Y(:,29)+Y(:,30)+Y(:,31)+Y(:,32)]);
	legend('Open','Dilated');
	labelPlot('Time (s)','Fraction of Population',18);
end