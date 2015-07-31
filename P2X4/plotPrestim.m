function  plotPrestim(tprestim,model)
    global prol3IVM
    experiment=prol3IVM;
    if tprestim==0
        J0=0;
    else
        J0=experiment.globals.J;
    end



    tatp=30;

    experiment.conditions{1}=tprestim;
    experiment.conditions{2}=tprestim+tatp;
    experiment.conditions{3}=tprestim;
    experiment.globals.IVMon=0;
    experiment.globals.IVMoff=tatp;
    experiment.globals.J=J0;
    hold off

    experiment.globals.A=0.1e-6;
    
    setGlobals(experiment.globals);


    experiment.conditions{1}=tprestim;
    experiment.conditions{2}=tprestim+tatp;
    experiment.conditions{3}=tprestim;
    [T0,I0,Y0]=model.naivePerfusionResponse(experiment.conditions{:});
% 
%     experiment.globals.IVMoff=0;
%     setGlobals(experiment.globals);
%     
    
    experiment.conditions{1}=0;
    experiment.conditions{2}=tatp;
    experiment.conditions{3}=tatp+30;
    [T1,I1,Y1]=model.perfusionResponse(Y0(end,:),experiment.conditions{:});

    ind=T1<tatp;
    
    T=[T0;T1(ind)+tprestim];
    I=[I0;I1(ind)];
    Y=[Y0;Y1(ind,:)];
    subplot(2,1,1);
    
    plot(T,I);

    subplot(2,1,2);
    plotWatchedStates(T,Y,model)
    
  
 

end

