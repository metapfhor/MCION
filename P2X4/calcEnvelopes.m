
X=unravelChain(xxp);
f=chainUnifSampler(X);

nx=10;

Xsample=zeros(size(X,1),nx);

for i=1:nx
    Xsample(:,i)=f();
end

cf(31);parChainPrestimDoseResponse(Xsample,P2X4free);

return 

cf(32);plotChainEnvelope(Xsample,pulse0IVM,potentP2X4coop2);
cf(33);plotChainEnvelope(Xsample,pulse1IVM,potentP2X4coop2);
cf(34);plotChainEnvelope(Xsample,pulse3IVM,potentP2X4coop2);
cf(35);plotChainEnvelope(Xsample,pulse10IVM,potentP2X4coop2);
cf(36);plotChainEnvelope(Xsample,prol3IVM,potentP2X4coop2);
cf(37);plotChainEnvelope(Xsample,prol2noIVM,potentP2X4coop2);
