function [ output_args ] = plotPanels(model)
%PLOTPANEL Summary of this function goes here
%   Detailed explanation goes here
exp1.conditions={5,125,150,1*10^-6};
exp3.conditions={5,125,150,3.2*10^-6};
exp10.conditions={5,125,150,10*10^-6};
exp32.conditions={5,45,80,32*10^-6};
exp100.conditions={5,45,80,100*10^-6};
exp320.conditions={5,45,80,320*10^-6};


subplot(1,5,1);
plotNaiveResponsePanel(exp1,model);
subplot(1,5,2);
plotNaiveResponsePanel(exp3,model);
subplot(1,5,3);
plotNaiveResponsePanel(exp10,model);
subplot(1,5,4);
plotNaiveResponsePanel(exp32,model);
subplot(1,5,5);
plotNaiveResponsePanel(exp100,model);


tightfig(gcf);
end

