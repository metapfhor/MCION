function plotPreStimIVCurve(experiment,model)
global V IVMon A
    f=2;

    setGlobals(experiment.globals)



    A0=A;

    

    
    A=0;
    
    ton=experiment.conditions{1};
    
	[T1,I1,Y1]=model.naivePerfusionResponse(0,ton,ton);
    
    A=A0;
    
    [T,I,Y]=model.perfusionResponse(Y1(end,:),ton,ton+10,ton+10);
    
    


    V=-80e-3*2*(rem(T,1/f)*f-1/2)-60e-3;

    I=model.getTotalCurrent(Y);

    tramp=ton+1/f;
    Tstim=T(T>ton);
    Ystim=Y(T>ton,:);
    V=V(T>tramp);
    I=I(T>tramp);
    T=T(T>tramp)-tramp;
    i=1;
    tprev=0;
    subplot(1,2,1);
    hold on

    while tprev<T(end)

        ind=T>=tprev&T<tprev+1/f;
        tprev=tprev+1/f;
        plot(V(ind),I(ind));

    end

hold off

subplot(1,2,2);
plot(Tstim,[model.getOpen(Ystim), model.getDilated(Ystim)],'LineWidth',2);

V=-60e-3;
end

