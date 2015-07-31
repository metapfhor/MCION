P2X4Inact1.getTotalCurrent=@ getTotalCurrentP2X4Inact1;
P2X4Inact1.name='P2X4Inact1';
P2X4Inact1.ode=@ modelODEP2X4Inact1;
P2X4Inact1.pulseODE=@ modelPulseODEP2X4Inact1;
P2X4Inact1.perfusionResponse=@ perfusionResponseP2X4Inact1;
P2X4Inact1.naivePerfusionResponse=@ naivePerfusionResponseP2X4Inact1;
P2X4Inact1.naivePerfusionResponseIV=@ naivePerfusionResponseIVP2X4Inact1;
P2X4Inact1.naivePerfusionSSE=@ naivePerfusionSSEP2X4Inact1;
P2X4Inact1.naivePerfusionErrVec=@ naivePerfusionErrVecP2X4Inact1;
P2X4Inact1.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2X4Inact1;
P2X4Inact1.naivePerfusionResponseExp=@ naivePerfusionResponseP2X4Inact1;
P2X4Inact1.naivePerfusionSSEExp=@ naivePerfusionSSEP2X4Inact1;
P2X4Inact1.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2X4Inact1;
P2X4Inact1.setParams=@ setParamsP2X4Inact1;
P2X4Inact1.setAuxiliary=@ setAuxiliaryP2X4Inact1;
P2X4Inact1.overrideGlobals=@ overrideGlobalsP2X4Inact1;
P2X4Inact1.getOpen=@ getOpenP2X4Inact1;
P2X4Inact1.getDilated=@ getDilatedP2X4Inact1;
P2X4Inact1.getWatchedStates=@ getWatchedStatesP2X4Inact1;
P2X4Inact1.getInfGeneratorMatrix=@ generatorMatrixP2X4Inact1;
P2X4Inact1.getWatchedLabels=@ getWatchedLabelsP2X4Inact1;
P2X4Inact1.naive=@ getNaiveP2X4Inact1;
P2X4Inact1.getParamTransitions=@ getParamTransitionsP2X4Inact1;

save('P2X4Inact1.mat','P2X4Inact1')