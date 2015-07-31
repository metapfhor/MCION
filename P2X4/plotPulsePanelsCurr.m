function plotPulsePanelCurrs(model)
    global pulse0IVM  pulse1IVM pulse3IVM  pulse10IVM
    
    subplot(4,1,1);
    plotPulsePanelCurr(pulse0IVM,model,1);

    annotatePlot('A',16);
    

    subplot(4,1,2);
    plotPulsePanelCurr(pulse1IVM,model,2);

    annotatePlot('B',16);
    


    subplot(4,1,3);
    plotPulsePanelCurr(pulse3IVM,model,3);
    

    annotatePlot('C',16);

    subplot(4,1,4);
    plotPulsePanelCurr(pulse10IVM,model,4);
    

   annotatePlot('D',16);

    
    
    
%     tightfig(gcf);
    
end

