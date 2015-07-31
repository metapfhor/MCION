function [Imax,Tmax,Tup,tauplat,Iplat,tauoff] = prol3IVMMeasure3(x,model)
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
        Tup=4;
        
 
        
%         cf(888);plot(T,I);

           [Imax,indMax]=min(I);
           Tmax=T(indMax);

            cf(23);

            Tup=T(I(1:end-1)>I(2:end)&T(1:end-1)>=Tmax);
            if length(Tup)>1
                Tup=Tup(end)-Tup(1);
            else
                Tup=0;
            end

           
           
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
            
            explin=@(a,t,m,c,x) a*exp(-x/t)+m*x+c;
            
            inddec=T>Tmax&T<=prol3IVMs.conditions{2};
            
            Tdec=T(inddec);
            if length(Tdec)>=4
                Tdec=Tdec-Tdec(1);
                Idec=I(inddec);

                f=fit(Tdec,Idec,explin,'Lower',[-Inf,0,0,-Inf],'Upper',[0,1000,Inf,Inf],'Start',[Idec(1)-Idec(end),3,Iplat(4)-Iplat(1)/55,Iplat(end)]);

    %             cf(99);plot(f,Tdec,Idec);

                tauplat=f.t;
            else
                tauplat=3000;
            end
end

