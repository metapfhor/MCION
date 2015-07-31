function  plotPanelsResponse(model)
global baseParameters exp1 exp3 exp10 exp32 exp100 exp3ca exp10ca exp32ca exp100ca exp320ca


%this matches the experimental conditions of fig 1
% from Anmar's JGP paper

m_cal=17.953218701151055;%1;



baseParameters('C')=0;





plotEnsembleNaiveResponse(exp1,model,2,5,1,6);


plotEnsembleNaiveResponse(exp3,model,2,5,2,7);

plotEnsembleNaiveResponse(exp10,model,2,5,3,8);

plotEnsembleNaiveResponse(exp32,model,2,5,4,9);

plotEnsembleNaiveResponse(exp100,model,2,5,5,10);

tightfig(gcf);
end

