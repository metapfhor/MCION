function [Imax,Tmax,Iplat,tauoff] = prol3IVMMeasure(x,model)
global  prol3IVMs

        setGlobals(prol3IVMs.globals);
        model.setParams(x);
        setGlobals(prol3IVMs.globals);
        model.overrideGlobals();
        
      
        
        ton=prol3IVMs.conditions{1};
        toff=prol3IVMs.conditions{2};
        Ttot=prol3IVMs.conditions{3};
        experiment=prol3IVMs;
        experiment.conditions{3}=[ton:0.01:ton+1.99 ton+2:1:39 40 60 80 95 toff:0.01:Ttot];
 

        
        [T,I,Y]=model.naivePerfusionResponse(experiment.conditions{:});
        
%         cf(888);plot(T,I);

           [Imax,indMax]=min(I);
           Tmax=T(indMax);
%         if T(indMax)-ton>=2
%             err=Inf;
%         else
            Imax=abs(Imax);
            
            Iplat=zeros(1,4);
            if sum(T==40)~=0
                Iplat(1)=abs(I(T==40));
            end
            if sum(T==60)~=0
            Iplat(2)=abs(I(T==60));
            end
            if sum(T==80)~=0
            Iplat(3)=abs(I(T==80));
            end
            if sum(T==95)~=0
                Iplat(4)=abs(I(T==95));
            end
            indoff=T>toff;
            Toff=T(indoff);
            if length(Toff)>2
            Toff=Toff-Toff(1);
            Ioff=I(indoff);
            Ioff=Ioff-Ioff(end);

            f=fit(Toff,Ioff,'exp1');
            tauoff=-1/f.b;
            else
            tauoff=3000;    
            end
end

