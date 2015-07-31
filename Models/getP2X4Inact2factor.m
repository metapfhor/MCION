P2X4Inact2factor.getTotalCurrent=@ getTotalCurrentP2X4Inact2factor;
P2X4Inact2factor.name='P2X4Inact2factor';
P2X4Inact2factor.ode=@ modelODEP2X4Inact2factor;
P2X4Inact2factor.pulseODE=@ modelPulseODEP2X4Inact2factor;
P2X4Inact2factor.perfusionResponse=@ perfusionResponseP2X4Inact2factor;
P2X4Inact2factor.naivePerfusionResponse=@ naivePerfusionResponseP2X4Inact2factor;
P2X4Inact2factor.naivePerfusionResponseIV=@ naivePerfusionResponseIVP2X4Inact2factor;
P2X4Inact2factor.naivePerfusionSSE=@ naivePerfusionSSEP2X4Inact2factor;
P2X4Inact2factor.naivePerfusionErrVec=@ naivePerfusionErrVecP2X4Inact2factor;
P2X4Inact2factor.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2X4Inact2factor;
P2X4Inact2factor.naivePerfusionResponseExp=@ naivePerfusionResponseP2X4Inact2factor;
P2X4Inact2factor.naivePerfusionSSEExp=@ naivePerfusionSSEP2X4Inact2factor;
P2X4Inact2factor.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2X4Inact2factor;
P2X4Inact2factor.setParams=@ setParamsP2X4Inact2factor;
P2X4Inact2factor.setAuxiliary=@ setAuxiliaryP2X4Inact2factor;
P2X4Inact2factor.overrideGlobals=@ overrideGlobalsP2X4Inact2factor;
P2X4Inact2factor.getOpen=@ getOpenP2X4Inact2factor;
P2X4Inact2factor.getDilated=@ getDilatedP2X4Inact2factor;
P2X4Inact2factor.getWatchedStates=@ getWatchedStatesP2X4Inact2factor;
P2X4Inact2factor.getInfGeneratorMatrix=@ generatorMatrixP2X4Inact2factor;
P2X4Inact2factor.getWatchedLabels=@ getWatchedLabelsP2X4Inact2factor;
P2X4Inact2factor.naive=@ getNaiveP2X4Inact2factor;
P2X4Inact2factor.getParamTransitions=@ getParamTransitionsP2X4Inact2factor;

save('P2X4Inact2factor.mat','P2X4Inact2factor')