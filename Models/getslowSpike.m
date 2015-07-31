slowSpike.getTotalCurrent=@ getTotalCurrentslowSpike;
slowSpike.ode=@ modelODEslowSpike;
slowSpike.naivePerfusionResponse=@ naivePerfusionResponseslowSpike;
slowSpike.naivePerfusionSSE=@ naivePerfusionSSEslowSpike;
slowSpike.naivePerfusionResponseExp=@ naivePerfusionResponseslowSpike;
slowSpike.naivePerfusionSSEExp=@ naivePerfusionSSEslowSpike;
slowSpike.naivePerfusionSSEIntegrator=@ naivePerfusionSSEIntegratorslowSpike;
slowSpike.setParams=@ setParamsslowSpike;
slowSpike.setAuxiliary=@ setAuxiliaryslowSpike;
slowSpike.getOpen=@ getOpenslowSpike;
slowSpike.getDilated=@ getDilatedslowSpike;

save('slowSpike.mat','slowSpike')