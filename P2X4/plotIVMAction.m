function   plotIVMAction(model)
    global prol3IVMp
%     experiment=struct();
%     experiment.conditions={7,37,50};
%     experiment.globals=struct('A',100e-6,'J',3e-6,'IVMon',12,'IVMoff',22);

    plotNaiveResponse(prol3IVMp,model);
end

