function h = normProl2noIVMError(model)
global  prol2noIVM

%"literature" values
Imax=2.1578e+03;

vmax=242.3;

fwash=0.243;
vwash=0.005;

taudes=6.0;
vtau=0.4;


    function err=sse(x)
        
    setGlobals(prol2noIVM.globals);
    model.setParams(x);
    setGlobals(prol2noIVM.globals);
    model.overrideGlobals();
        
        
        [T,I,Y]=ProlFuncCallerP2X4(prol2noIVM.conditions{:},model);
        ton=prol2noIVM.conditions{1};
        toff=prol2noIVM.conditions{2};
        [Imax1,indMax]=min(I);
        if T(indMax)-ton(1)>2
            err=Inf;
        else
            Imax1=abs(Imax1);
            Imax2=min(I(T>=ton(2)));
            Imax2=abs(Imax2);
            rwash=Imax2/Imax1;

            indDecay=T>T(indMax)&T<toff(1);
            Tdecay=T(indDecay);
            Tdecay=Tdecay-Tdecay(1);
            Idecay=I(indDecay);

            f=fit(Tdecay,Idecay,'exp1');
            taudes1=-1/f.b;
    %         figure(564);plot(f,Tdecay,Idecay)

            err=sum([((Imax-Imax1)^2)/(2*vmax^2),((fwash-rwash)^2)/(2*vwash^2),((taudes-taudes1)^2)/(2*vtau^2)]);

        end
       
       
    end
    h=@sse;
end

