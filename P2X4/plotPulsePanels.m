function plotPulsePanels(model)
    global pulse0IVM  pulse1IVM pulse3IVM  pulse10IVM
    
    plotPulsePanel(pulse0IVM,model,1);
    subplot(4,2,1);
    annotatePlot('A',16);
    
    subplot(4,2,2);
    annotatePlot('E',16);

    plotPulsePanel(pulse1IVM,model,2);
    
    subplot(4,2,3);
    annotatePlot('B',16);
    
    subplot(4,2,4);
    annotatePlot('F',16);
    
    plotPulsePanel(pulse3IVM,model,3);
    
    subplot(4,2,5);
    annotatePlot('C',16);
    
    subplot(4,2,6);
    annotatePlot('G',16);
    
    plotPulsePanel(pulse10IVM,model,4);
    
   subplot(4,2,7);
   annotatePlot('D',16);
   
    subplot(4,2,8);
    annotatePlot('H',16);
    
    
    
%     tightfig(gcf);
    
end

