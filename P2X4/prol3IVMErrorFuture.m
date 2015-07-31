function s = prol3IVMErrorFuture(model)
global  prol3IVMs globalStruct

%"literature" values
Imax=3700;
%not strict enough
% vmax=313;
vmax=50;
vplat=100;


tauoff=2.5;
vtau=0.5;


g=globalStruct;
    function F=sseFutures(x)
   
        F=parfeval(@globalSetFeval4,4,g,@prol3IVMMeasure,x,model);
        
    end

    function err=sse(F)
        I40=1730;
        I60=1530;
        I80=1463;
        I95=1408;
%          disp(F);
        [foo,Imaxp,Tmax,Iplat,tauoffp]=fetchNext(F);
           
        err=sum([((Imax-Imaxp)^2)/(2*vmax^2) (([I40 I60 I80 I95]-Iplat).^2)/(2*vplat^2) ((tauoff-tauoffp)^2)/(2*vtau^2)]);

    
    end
    
    s=struct('getFutures',@sseFutures,'evalFutures',@sse);
end

