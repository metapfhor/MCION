P2X4stack.getTotalCurrent=@ getTotalCurrentP2X4stack;
P2X4stack.ode=@ modelODEP2X4stack;
P2X4stack.pulseODE=@ modelPulseODEP2X4stack;
P2X4stack.perfusionResponse=@ perfusionResponseP2X4stack;
P2X4stack.naivePerfusionResponse=@ naivePerfusionResponseP2X4stack;
P2X4stack.naivePerfusionResponseIV=@ naivePerfusionResponseIVP2X4stack;
P2X4stack.naivePerfusionSSE=@ naivePerfusionSSEP2X4stack;
P2X4stack.naivePerfusionErrVec=@ naivePerfusionErrVecP2X4stack;
P2X4stack.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2X4stack;
P2X4stack.naivePerfusionResponseExp=@ naivePerfusionResponseP2X4stack;
P2X4stack.naivePerfusionSSEExp=@ naivePerfusionSSEP2X4stack;
P2X4stack.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2X4stack;
P2X4stack.setParams=@ setParamsP2X4stack;
P2X4stack.setAuxiliary=@ setAuxiliaryP2X4stack;
P2X4stack.overrideGlobals=@ overrideGlobalsP2X4stack;
P2X4stack.getOpen=@ getOpenP2X4stack;
P2X4stack.getDilated=@ getDilatedP2X4stack;
P2X4stack.getWatchedStates=@ getWatchedStatesP2X4stack;
P2X4stack.getWatchedLabels=@ getWatchedLabelsP2X4stack;
P2X4stack.naive=@ getNaiveP2X4stack;

save('P2X4stack.mat','P2X4stack')