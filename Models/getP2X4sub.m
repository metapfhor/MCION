P2X4sub.getTotalCurrent=@ getTotalCurrentP2X4sub;
P2X4sub.ode=@ modelODEP2X4sub;
P2X4sub.pulseODE=@ modelPulseODEP2X4sub;
P2X4sub.perfusionResponse=@ perfusionResponseP2X4sub;
P2X4sub.naivePerfusionResponse=@ naivePerfusionResponseP2X4sub;
P2X4sub.naivePerfusionSSE=@ naivePerfusionSSEP2X4sub;
P2X4sub.naivePerfusionVarSSE=@ naivePerfusionVarSSEP2X4sub;
P2X4sub.naivePerfusionResponseExp=@ naivePerfusionResponseP2X4sub;
P2X4sub.naivePerfusionSSEExp=@ naivePerfusionSSEP2X4sub;
P2X4sub.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorP2X4sub;
P2X4sub.setParams=@ setParamsP2X4sub;
P2X4sub.setAuxiliary=@ setAuxiliaryP2X4sub;
P2X4sub.overrideGlobals=@ overrideGlobalsP2X4sub;
P2X4sub.getOpen=@ getOpenP2X4sub;
P2X4sub.getDilated=@ getDilatedP2X4sub;
P2X4sub.getWatchedStates=@ getWatchedStatesP2X4sub;
P2X4sub.getWatchedLabels=@ getWatchedLabelsP2X4sub;
P2X4sub.naive=@ getNaiveP2X4sub;

save('P2X4sub.mat','P2X4sub')