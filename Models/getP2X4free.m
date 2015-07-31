P2X4free.getTotalCurrent=@ getTotalCurrentP2X4free;
P2X4free.ode=@ modelODEP2X4free;
P2X4free.pulseODE=@ modelPulseODEP2X4free;
P2X4free.perfusionResponse=@ perfusionResponseP2X4free;
P2X4free.naivePerfusionResponse=@ naivePerfusionResponseP2X4free;
P2X4free.naivePerfusionResponseIV=@ naivePerfusionResponseIVP2X4free;
P2X4free.naivePerfusionSSE=@ naivePerfusionSSEP2X4free;
P2X4free.naivePerfusionErrVec=@ naivePerfusionErrVecP2X4free;
P2X4free.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2X4free;
P2X4free.naivePerfusionResponseExp=@ naivePerfusionResponseP2X4free;
P2X4free.naivePerfusionSSEExp=@ naivePerfusionSSEP2X4free;
P2X4free.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2X4free;
P2X4free.setParams=@ setParamsP2X4free;
P2X4free.setAuxiliary=@ setAuxiliaryP2X4free;
P2X4free.overrideGlobals=@ overrideGlobalsP2X4free;
P2X4free.getOpen=@ getOpenP2X4free;
P2X4free.getDilated=@ getDilatedP2X4free;
P2X4free.getWatchedStates=@ getWatchedStatesP2X4free;
P2X4free.getInfGeneratorMatrix=@ generatorMatrixP2X4free;
P2X4free.getWatchedLabels=@ getWatchedLabelsP2X4free;
P2X4free.naive=@ getNaiveP2X4free;

save('P2X4free.mat','P2X4free')