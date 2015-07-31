function s = prol3IVMErrorFuture(model)
global  prol3IVMs globalStruct

%"literature" values
Imax=3700;
%not strict enough
% vmax=313;
vmax=20;
% vplat=100;
 vplat=10;


tauoff=2.5;
vtau=0.1;


g=globalStruct;
    function F=sseFutures(x)
   
        F=parfeval(@globalSetFeval6,6,g,@prol3IVMMeasure3,x,model);
        
    end

    function err=sse(F)
        I40=1730;
        I60=1530;
        I80=1463;
        I95=1408;
%          disp(F);
        [foo,Imaxp,Tmax,Tup,tauplat,Iplat,tauoffp]=fetchNext(F);
           
        if Tup>0.5
            err=Inf;
            return;
        end
        
        err=sum([((Imax-Imaxp)^2)/(2*vmax^2) (tauplat-6)^2/(2*0.1^2) (([I40 I60 I80 I95]-Iplat).^2)/(2*vplat^2) ((tauoff-tauoffp)^2)/(2*vtau^2)]);

    
    end
    
    s=struct('getFutures',@sseFutures,'evalFutures',@sse);
end

