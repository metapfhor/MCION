omarP2X4.getTotalCurrent=@ getTotalCurrentomarP2X4;
omarP2X4.name='omarP2X4';
omarP2X4.ode=@ modelODEomarP2X4;
omarP2X4.pulseODE=@ modelPulseODEomarP2X4;
omarP2X4.perfusionResponse=@ perfusionResponseomarP2X4;
omarP2X4.naivePerfusionResponse=@ naivePerfusionResponseomarP2X4;
omarP2X4.naivePerfusionResponseIV=@ naivePerfusionResponseIVomarP2X4;
omarP2X4.naivePerfusionSSE=@ naivePerfusionSSEomarP2X4;
omarP2X4.naivePerfusionErrVec=@ naivePerfusionErrVecomarP2X4;
omarP2X4.naivePerfusionVarSSE=@ naivePerfusionVarSSEomarP2X4;
omarP2X4.naivePerfusionResponseExp=@ naivePerfusionResponseomarP2X4;
omarP2X4.naivePerfusionSSEExp=@ naivePerfusionSSEomarP2X4;
omarP2X4.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratoromarP2X4;
omarP2X4.setParams=@ setParamsomarP2X4;
omarP2X4.setAuxiliary=@ setAuxiliaryomarP2X4;
omarP2X4.overrideGlobals=@ overrideGlobalsomarP2X4;
omarP2X4.getOpen=@ getOpenomarP2X4;
omarP2X4.getDilated=@ getDilatedomarP2X4;
omarP2X4.getWatchedStates=@ getWatchedStatesomarP2X4;
omarP2X4.getInfGeneratorMatrix=@ generatorMatrixomarP2X4;
omarP2X4.getWatchedLabels=@ getWatchedLabelsomarP2X4;
omarP2X4.naive=@ getNaiveomarP2X4;

save('omarP2X4.mat','omarP2X4')