function h = normProl3IVMError(model)
global  prol3IVM

%"literature" values
Imax=3700;
vmax=313;



tauoff=2.5;
vtau=0.5;

ton=prol3IVM.conditions{1};
toff=prol3IVM.conditions{2};
Ttot=prol3IVM.conditions{3};
experiment=prol3IVM;
experiment.conditions{3}=[ton:0.01:ton+1.99 ton+2:1:39 40 60 80 95 toff:0.01:Ttot];

    function err=sse(x)
        I40=1730;
I60=1530;
I80=1463;
I95=1408;
    setGlobals(prol3IVM.globals);
    model.setParams(x);
    setGlobals(prol3IVM.globals);
    model.overrideGlobals();
        
        
        [T,I,Y]=model.naivePerfusionResponse(experiment.conditions{:});
        
%         cf(888);plot(T,I);

        [Imaxp,indMax]=min(I);
%         if T(indMax)-ton>=2
%             err=Inf;
%         else
            Imaxp=abs(Imaxp);
        
        
            I95p=abs(I(T==95));
        
            indoff=T>toff;
            Toff=T(indoff);
            Toff=Toff-Toff(1);
            Ioff=I(indoff);
            Ioff=Ioff-Ioff(end);

            f=fit(Toff,Ioff,'exp1');
            tauoffp=-1/f.b;
%             figure(564);plot(f,Toff,Ioff)




            err=sum([((Imax-Imaxp)^2)/(2*vmax^2) ((I95-I95p).^2)/(2*(vmax/4)^2) ((tauoff-tauoffp)^2)/(2*vtau^2)]);

%         end
        
       
    end
    h=@sse;
end

