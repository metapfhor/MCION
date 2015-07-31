P2X4Inactsub.getTotalCurrent=@ getTotalCurrentP2X4Inactsub;
P2X4Inactsub.name='P2X4Inactsub';
P2X4Inactsub.ode=@ modelODEP2X4Inactsub;
P2X4Inactsub.pulseODE=@ modelPulseODEP2X4Inactsub;
P2X4Inactsub.perfusionResponse=@ perfusionResponseP2X4Inactsub;
P2X4Inactsub.naivePerfusionResponse=@ naivePerfusionResponseP2X4Inactsub;
P2X4Inactsub.naivePerfusionResponseIV=@ naivePerfusionResponseIVP2X4Inactsub;
P2X4Inactsub.naivePerfusionSSE=@ naivePerfusionSSEP2X4Inactsub;
P2X4Inactsub.naivePerfusionErrVec=@ naivePerfusionErrVecP2X4Inactsub;
P2X4Inactsub.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2X4Inactsub;
P2X4Inactsub.naivePerfusionResponseExp=@ naivePerfusionResponseP2X4Inactsub;
P2X4Inactsub.naivePerfusionSSEExp=@ naivePerfusionSSEP2X4Inactsub;
P2X4Inactsub.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2X4Inactsub;
P2X4Inactsub.setParams=@ setParamsP2X4Inactsub;
P2X4Inactsub.setAuxiliary=@ setAuxiliaryP2X4Inactsub;
P2X4Inactsub.overrideGlobals=@ overrideGlobalsP2X4Inactsub;
P2X4Inactsub.getOpen=@ getOpenP2X4Inactsub;
P2X4Inactsub.getDilated=@ getDilatedP2X4Inactsub;
P2X4Inactsub.getWatchedStates=@ getWatchedStatesP2X4Inactsub;
P2X4Inactsub.getInfGeneratorMatrix=@ generatorMatrixP2X4Inactsub;
P2X4Inactsub.getWatchedLabels=@ getWatchedLabelsP2X4Inactsub;
P2X4Inactsub.naive=@ getNaiveP2X4Inactsub;
P2X4Inactsub.getParamTransitions=@ getParamTransitionsP2X4Inactsub;

save('P2X4Inactsub.mat','P2X4Inactsub')