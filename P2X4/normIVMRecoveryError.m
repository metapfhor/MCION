function h = normIVMRecoveryError(model)
global  prol3IVMp;

%normalize wrt the final point in the control
    experiment=struct();
    experiment.conditions={0,25,25};
    experiment.globals=struct('A',100e-6,'J',3e-6,'IVMon',4.6,'IVMoff',10.6);

    function err=sse(x)
        
    setGlobals(experiment.globals);
    model.setParams(x);
    setGlobals(experiment.globals);
    model.overrideGlobals();
        
        
        [T,I,Y]=model.naivePerfusionResponse(experiment.conditions{:});
        Iatp=I(T<=4.6);
        Iivm1=I(T>4.6&T<6.6);
        Iivm2=I(T>9&T<10.6);
        Idecay=I(T==25);

%         cf(31);
%         subplot(2,1,1);
%         plot(T,I);
% 
%         subplot(2,1,2);
%         plotWatchedStates(T,Y,model);
%         drawnow;

        if isempty(Iatp)
            err=Inf;
        else
            if isempty(Iivm1) || isempty(Iivm2)
                err=Inf;
            else
                Iatp=min(Iatp);
                err=sum((2245*([1.376-min(Iivm1)/Iatp,1.162-min(Iivm2)/Iatp,0.112-Idecay/Iatp])).^2);
            end
        end
       
    end
    h=@sse;
end

