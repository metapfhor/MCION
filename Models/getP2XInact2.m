P2XInact2.getTotalCurrent=@ getTotalCurrentP2XInact2;
P2XInact2.name='P2XInact2';
P2XInact2.ode=@ modelODEP2XInact2;
P2XInact2.pulseODE=@ modelPulseODEP2XInact2;
P2XInact2.perfusionResponse=@ perfusionResponseP2XInact2;
P2XInact2.naivePerfusionResponse=@ naivePerfusionResponseP2XInact2;
P2XInact2.naivePerfusionResponseIV=@ naivePerfusionResponseIVP2XInact2;
P2XInact2.naivePerfusionSSE=@ naivePerfusionSSEP2XInact2;
P2XInact2.naivePerfusionErrVec=@ naivePerfusionErrVecP2XInact2;
P2XInact2.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2XInact2;
P2XInact2.naivePerfusionResponseExp=@ naivePerfusionResponseP2XInact2;
P2XInact2.naivePerfusionSSEExp=@ naivePerfusionSSEP2XInact2;
P2XInact2.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2XInact2;
P2XInact2.setParams=@ setParamsP2XInact2;
P2XInact2.setAuxiliary=@ setAuxiliaryP2XInact2;
P2XInact2.overrideGlobals=@ overrideGlobalsP2XInact2;
P2XInact2.getOpen=@ getOpenP2XInact2;
P2XInact2.getDilated=@ getDilatedP2XInact2;
P2XInact2.getWatchedStates=@ getWatchedStatesP2XInact2;
P2XInact2.getInfGeneratorMatrix=@ generatorMatrixP2XInact2;
P2XInact2.getWatchedLabels=@ getWatchedLabelsP2XInact2;
P2XInact2.naive=@ getNaiveP2XInact2;
P2XInact2.getParamTransitions=@ getParamTransitionsP2XInact2;

save('P2XInact2.mat','P2XInact2')