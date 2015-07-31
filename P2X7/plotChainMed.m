function  plotChainPanels(model,X,nplot)
global baseParameters exp1 exp3 exp10 exp32 exp100 exp3ca exp10ca exp32ca exp100ca exp320ca


%this matches the experimental conditions of fig 1
% from Anmar's JGP paper

m_cal=17.953218701151055;%1;

if nargin==3
    X=correlatedSubChain(X,nplot);
end



subplot(2,1,1);
plotChainResponse(exp32ca,model,X);


baseParameters('C')=0;


%%exp320.conditions={5,45,80,320*10^-6};



subplot(2,1,2);
plotChainResponse(exp10,model,X);

tightfig(gcf);
end

