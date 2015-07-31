function  plotLow(model)
global baseParameters exp1 exp3 exp10 exp32 exp100 exp3ca exp10ca exp32ca exp100ca exp320ca





subplot(2,1,1);
plotNaiveResponsePanel(exp3ca,model);


baseParameters('C')=0;


%%exp320.conditions={5,45,80,320*10^-6};



subplot(2,1,2);
plotNaiveResponsePanel(exp1,model);

tightfig(gcf);
end

