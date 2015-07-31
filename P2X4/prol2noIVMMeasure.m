function [Imax1,Tmax1,Imax2,taudes,Iinf] = prol2noIVMsMeasure(x,model)
global  prol2noIVMs

    setGlobals(prol2noIVMs.globals);
    model.setParams(x);
    setGlobals(prol2noIVMs.globals);
    model.overrideGlobals();
    
    [T,I,Y]=ProlFuncCallerP2X4(prol2noIVMs.conditions{:},model);
    
    [Imax1,indMax]=min(I);
    ton=prol2noIVMs.conditions{1};
    toff=prol2noIVMs.conditions{2};
    
    

    
            Imax1=abs(Imax1);
            Tmax1=T(indMax);
            Imax2=min(I(T>=ton(2)));
            Imax2=abs(Imax2);
           

            indDecay=T>T(indMax)&T<toff(1);
            Tdecay=T(indDecay);
            
            if length(Tdecay)==0
               taudes=Inf; 
               Iinf=Inf;
               return;
            end
            
            Tdecay=Tdecay-Tdecay(1);
            Idecay=I(indDecay);
            Iinf=abs(Idecay(end));
            
            Idecay=Idecay+Iinf;
            
            f=fit(Tdecay,Idecay,'exp1');
            taudes=-1/f.b;
           
    
    
end

