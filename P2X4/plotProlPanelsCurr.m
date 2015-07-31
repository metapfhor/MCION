function plotPulsePanels(model)
    global prol2noIVM prol3IVM
    
    plotProlongedPanelCurr(prol2noIVM,model,1);
    

    annotatePlot('A',20);
    

    plotProlongedPanelCurr(prol3IVM,model,2);


    annotatePlot('B',20);


    
end

