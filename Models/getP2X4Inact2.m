P2X4Inact2.getTotalCurrent=@ getTotalCurrentP2X4Inact2;
P2X4Inact2.name='P2X4Inact2';
P2X4Inact2.ode=@ modelODEP2X4Inact2;
P2X4Inact2.pulseODE=@ modelPulseODEP2X4Inact2;
P2X4Inact2.perfusionResponse=@ perfusionResponseP2X4Inact2;
P2X4Inact2.naivePerfusionResponse=@ naivePerfusionResponseP2X4Inact2;
P2X4Inact2.naivePerfusionResponseIV=@ naivePerfusionResponseIVP2X4Inact2;
P2X4Inact2.naivePerfusionSSE=@ naivePerfusionSSEP2X4Inact2;
P2X4Inact2.naivePerfusionErrVec=@ naivePerfusionErrVecP2X4Inact2;
P2X4Inact2.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2X4Inact2;
P2X4Inact2.naivePerfusionResponseExp=@ naivePerfusionResponseP2X4Inact2;
P2X4Inact2.naivePerfusionSSEExp=@ naivePerfusionSSEP2X4Inact2;
P2X4Inact2.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2X4Inact2;
P2X4Inact2.setParams=@ setParamsP2X4Inact2;
P2X4Inact2.setAuxiliary=@ setAuxiliaryP2X4Inact2;
P2X4Inact2.overrideGlobals=@ overrideGlobalsP2X4Inact2;
P2X4Inact2.getOpen=@ getOpenP2X4Inact2;
P2X4Inact2.getDilated=@ getDilatedP2X4Inact2;
P2X4Inact2.getWatchedStates=@ getWatchedStatesP2X4Inact2;
P2X4Inact2.getInfGeneratorMatrix=@ generatorMatrixP2X4Inact2;
P2X4Inact2.getWatchedLabels=@ getWatchedLabelsP2X4Inact2;
P2X4Inact2.naive=@ getNaiveP2X4Inact2;
P2X4Inact2.getParamTransitions=@ getParamTransitionsP2X4Inact2;

save('P2X4Inact2.mat','P2X4Inact2')