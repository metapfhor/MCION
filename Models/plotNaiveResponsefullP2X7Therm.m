function h = plotNaiveResponsefullP2X7Therm(experiment)
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
	
	plot(T,[Y(:,5)+Y(:,6), Y(:,7)+Y(:,8)]);
	legend('Open','Dilated');
	labelPlot('Time (s)','Fraction of Population',18);
end