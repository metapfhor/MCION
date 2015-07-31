factorP2X4.getTotalCurrent=@ getTotalCurrentfactorP2X4;
factorP2X4.ode=@ modelODEfactorP2X4;
factorP2X4.pulseODE=@ modelPulseODEfactorP2X4;
factorP2X4.perfusionResponse=@ perfusionResponsefactorP2X4;
factorP2X4.naivePerfusionResponse=@ naivePerfusionResponsefactorP2X4;
factorP2X4.naivePerfusionSSE=@ naivePerfusionSSEfactorP2X4;
factorP2X4.naivePerfusionErrVec=@ naivePerfusionErrVecfactorP2X4;
factorP2X4.naivePerfusionVarSSE=@ naivePerfusionVarSSEfactorP2X4;
factorP2X4.naivePerfusionResponseExp=@ naivePerfusionResponsefactorP2X4;
factorP2X4.naivePerfusionSSEExp=@ naivePerfusionSSEfactorP2X4;
factorP2X4.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorfactorP2X4;
factorP2X4.setParams=@ setParamsfactorP2X4;
factorP2X4.setAuxiliary=@ setAuxiliaryfactorP2X4;
factorP2X4.overrideGlobals=@ overrideGlobalsfactorP2X4;
factorP2X4.getOpen=@ getOpenfactorP2X4;
factorP2X4.getDilated=@ getDilatedfactorP2X4;
factorP2X4.getWatchedStates=@ getWatchedStatesfactorP2X4;
factorP2X4.getWatchedLabels=@ getWatchedLabelsfactorP2X4;
factorP2X4.naive=@ getNaivefactorP2X4;

save('factorP2X4.mat','factorP2X4')