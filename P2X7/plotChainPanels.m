function  plotChainPanels(model,X,nplot)
global baseParameters exp1 exp3 exp10 exp32 exp100 exp3ca exp10ca exp32ca exp100ca exp320ca


%this matches the experimental conditions of fig 1
% from Anmar's JGP paper

m_cal=17.953218701151055;%1;

if nargin==3
    X=correlatedSubChain(X,nplot);
end


L3=baseParameters('L3');

subplot(2,5,1);
plotChainResponse(exp3ca,model,X);
%%baseParameters('L3')=0.1;
subplot(2,5,2);
plotChainResponse(exp10ca,model,X);
%%baseParameters('L3')=L3;
subplot(2,5,3);
plotChainResponse(exp32ca,model,X);
subplot(2,5,4);
plotChainResponse(exp100ca,model,X);
subplot(2,5,5);
plotChainResponse(exp320ca,model,X);

baseParameters('C')=0;


%%exp320.conditions={5,45,80,320*10^-6};


subplot(2,5,6);
plotChainResponse(exp1,model,X);
subplot(2,5,7);
%%baseParameters('L3')=0.1;
plotChainResponse(exp3,model,X);
%%baseParameters('L3')=L3;
subplot(2,5,8);
plotChainResponse(exp10,model,X);
subplot(2,5,9);
plotChainResponse(exp32,model,X);
subplot(2,5,10);
plotChainResponse(exp100,model,X);

tightfig(gcf);
end

