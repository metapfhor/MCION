P2X4Inact12.getTotalCurrent=@ getTotalCurrentP2X4Inact12;
P2X4Inact12.name='P2X4Inact12';
P2X4Inact12.ode=@ modelODEP2X4Inact12;
P2X4Inact12.pulseODE=@ modelPulseODEP2X4Inact12;
P2X4Inact12.perfusionResponse=@ perfusionResponseP2X4Inact12;
P2X4Inact12.naivePerfusionResponse=@ naivePerfusionResponseP2X4Inact12;
P2X4Inact12.naivePerfusionResponseIV=@ naivePerfusionResponseIVP2X4Inact12;
P2X4Inact12.naivePerfusionSSE=@ naivePerfusionSSEP2X4Inact12;
P2X4Inact12.naivePerfusionErrVec=@ naivePerfusionErrVecP2X4Inact12;
P2X4Inact12.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2X4Inact12;
P2X4Inact12.naivePerfusionResponseExp=@ naivePerfusionResponseP2X4Inact12;
P2X4Inact12.naivePerfusionSSEExp=@ naivePerfusionSSEP2X4Inact12;
P2X4Inact12.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2X4Inact12;
P2X4Inact12.setParams=@ setParamsP2X4Inact12;
P2X4Inact12.setAuxiliary=@ setAuxiliaryP2X4Inact12;
P2X4Inact12.overrideGlobals=@ overrideGlobalsP2X4Inact12;
P2X4Inact12.getOpen=@ getOpenP2X4Inact12;
P2X4Inact12.getDilated=@ getDilatedP2X4Inact12;
P2X4Inact12.getWatchedStates=@ getWatchedStatesP2X4Inact12;
P2X4Inact12.getInfGeneratorMatrix=@ generatorMatrixP2X4Inact12;
P2X4Inact12.getWatchedLabels=@ getWatchedLabelsP2X4Inact12;
P2X4Inact12.naive=@ getNaiveP2X4Inact12;
P2X4Inact12.getParamTransitions=@ getParamTransitionsP2X4Inact12;

save('P2X4Inact12.mat','P2X4Inact12')