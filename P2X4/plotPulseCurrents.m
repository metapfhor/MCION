function plotPulseCurrents(model)
    global pulse0IVM  pulse1IVM pulse3IVM  pulse10IVM
    
    plotPulseCurrent(pulse0IVM,model,1);
    annotatePlot('A',28);

    plotPulseCurrent(pulse1IVM,model,2);
    annotatePlot('B',28);
    
    plotPulseCurrent(pulse3IVM,model,3);
    annotatePlot('C',28);
    
    plotPulseCurrent(pulse10IVM,model,4);
    annotatePlot('D',28);
    
%     tightfig(gcf);
    
end

