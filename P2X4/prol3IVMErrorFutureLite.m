function s = prol3IVMErrorFuture(model)
global  prol3IVMs globalStruct

%"literature" values
Imax=3700;
vmax=313;



tauoff=2.5;
vtau=0.5;


g=globalStruct;
    function F=sseFutures(x)
   
        F=parfeval(@globalSetFeval4,4,g,@prol3IVMMeasure,x,model);
        
        



%         end
        
    end

    function err=sse(F)

        I95=1408;
%          disp(F);
        [foo,Imaxp,Tmax,Iplat,tauoffp]=fetchNext(F);
           
        err=sum([((Imax-Imaxp)^2)/(2*vmax^2) (([I95]-Iplat(end)).^2)/(2*(vmax/4)^2) ((tauoff-tauoffp)^2)/(2*vtau^2)]);

    
    end
    
    s=struct('getFutures',@sseFutures,'evalFutures',@sse);
end

