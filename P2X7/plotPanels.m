function  plotPanels(model)
global baseParameters exp1 exp3 exp10 exp32 exp100 exp3ca exp10ca exp32ca exp100ca exp320ca


%this matches the experimental conditions of fig 1
% from Anmar's JGP paper

m_cal=17.953218701151055;%1;




L3=baseParameters('L3');
baseParameters('C')=2*10^-3;
subplot(2,5,1);
plotNaiveResponsePanel(exp3ca,model);
%%baseParameters('L3')=0.1;
subplot(2,5,2);
plotNaiveResponsePanel(exp10ca,model);
%%baseParameters('L3')=L3;
subplot(2,5,3);
plotNaiveResponsePanel(exp32ca,model);
subplot(2,5,4);
plotNaiveResponsePanel(exp100ca,model);
subplot(2,5,5);
plotNaiveResponsePanel(exp320ca,model);

baseParameters('C')=0;


%%exp320.conditions={5,45,80,320*10^-6};


subplot(2,5,6);
plotNaiveResponsePanel(exp1,model);
subplot(2,5,7);
%%baseParameters('L3')=0.1;
plotNaiveResponsePanel(exp3,model);
%%baseParameters('L3')=L3;
subplot(2,5,8);
plotNaiveResponsePanel(exp10,model);
subplot(2,5,9);
plotNaiveResponsePanel(exp32,model);
subplot(2,5,10);
plotNaiveResponsePanel(exp100,model);

tightfig(gcf);
end

