anmarP2X4tri.getTotalCurrent=@ getTotalCurrentanmarP2X4tri;
anmarP2X4tri.name='anmarP2X4tri';
anmarP2X4tri.ode=@ modelODEanmarP2X4tri;
anmarP2X4tri.pulseODE=@ modelPulseODEanmarP2X4tri;
anmarP2X4tri.perfusionResponse=@ perfusionResponseanmarP2X4tri;
anmarP2X4tri.naivePerfusionResponse=@ naivePerfusionResponseanmarP2X4tri;
anmarP2X4tri.naivePerfusionResponseIV=@ naivePerfusionResponseIVanmarP2X4tri;
anmarP2X4tri.naivePerfusionSSE=@ naivePerfusionSSEanmarP2X4tri;
anmarP2X4tri.naivePerfusionErrVec=@ naivePerfusionErrVecanmarP2X4tri;
anmarP2X4tri.naivePerfusionVarSSE=@ naivePerfusionVarSSEanmarP2X4tri;
anmarP2X4tri.naivePerfusionResponseExp=@ naivePerfusionResponseanmarP2X4tri;
anmarP2X4tri.naivePerfusionSSEExp=@ naivePerfusionSSEanmarP2X4tri;
anmarP2X4tri.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratoranmarP2X4tri;
anmarP2X4tri.setParams=@ setParamsanmarP2X4tri;
anmarP2X4tri.setAuxiliary=@ setAuxiliaryanmarP2X4tri;
anmarP2X4tri.overrideGlobals=@ overrideGlobalsanmarP2X4tri;
anmarP2X4tri.getOpen=@ getOpenanmarP2X4tri;
anmarP2X4tri.getDilated=@ getDilatedanmarP2X4tri;
anmarP2X4tri.getWatchedStates=@ getWatchedStatesanmarP2X4tri;
anmarP2X4tri.getInfGeneratorMatrix=@ generatorMatrixanmarP2X4tri;
anmarP2X4tri.getWatchedLabels=@ getWatchedLabelsanmarP2X4tri;
anmarP2X4tri.naive=@ getNaiveanmarP2X4tri;

save('anmarP2X4tri.mat','anmarP2X4tri')