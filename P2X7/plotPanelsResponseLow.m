function  plotPanelsResponse(model)
global baseParameters exp1 exp3 exp10 exp32 exp100 exp3ca exp10ca exp32ca exp100ca exp320ca


%this matches the experimental conditions of fig 1
% from Anmar's JGP paper

m_cal=17.953218701151055;%1;



baseParameters('C')=0;





plotNaiveResponse(exp1,model,2,2,1,3);


plotNaiveResponse(exp3,model,2,2,2,4);


tightfig(gcf);
end

