function s = normProl2noIVMError(model)
global  prol2noIVM globalStruct 

%"literature" values
Imax=2.1578e+03;

% vmax=242.3;
vmax=50;

fwash=0.243;
vwash=0.004;

taudes=6.0;
vtau=0.4;

ton=prol2noIVM.conditions{1};
g=globalStruct;
    function F = sseFutures(x)
        F=parfeval(@globalSetFeval5,5,g,@prol2noIVMMeasure,x,model);
    end

    function err=sse(F)
        

            try
       
            [~,Imax1,Tmax1,Imax2,taudes1,Iinf] = fetchNext(F);
            
            catch e
                err=Inf;  
                return;
            end
        
            if Tmax1-ton(1)>2 || Iinf>100
                err=Inf;
            else
                rwash=Imax2/Imax1;
                if Iinf>40
                    err=Inf;
                else
                    err=sum([((Imax-Imax1)^2)/(2*vmax^2),((fwash-rwash)^2)/(2*vwash^2),((taudes-taudes1)^2)/(2*vtau^2)]);
                end
                
            end
    end
       
       

    s=struct('getFutures',@sseFutures,'evalFutures',@sse);
end

