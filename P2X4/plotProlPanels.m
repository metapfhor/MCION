function plotPulsePanels(model)
    global prol2noIVM prol3IVM
    
    plotProlongedPanel(prol2noIVM,model,1);
    
    subplot(2,2,1);
    annotatePlot('A',20);
    
     subplot(2,2,2);
    annotatePlot('C',20);
    
    plotProlongedPanel(prol3IVM,model,2);

    subplot(2,2,3);
    annotatePlot('B',20);
    
    subplot(2,2,4);
    annotatePlot('D',20);
    

    
end

