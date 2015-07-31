function plotPulseDoseCurrentAndKinetics(model)
 global prol2noIVM  prol3IVM E1 E2
global taucurve semtaucurve Icurve semIcurve


    subplot(2,2,1);
    plotPrestimDoseResponsePanel(model);
    annotatePlot('A',18);
    
    

    subplot(2,2,3);
    IVpanel(model);
    annotatePlot('B',18);
    
    subplot(2,2,2);
    plotProlongedPanelCurr(prol2noIVM,model,1);
%     set(gca,'XTick',[])
    annotatePlot('C',18);
    

    subplot(2,2,4);
    plotProlongedPanelCurr(prol3IVM,model,2);
%     set(gca,'XTick',[])
    annotatePlot('D',18);
    labelPlot('Time (s)','Current (pA)',12);
    

return;

end

