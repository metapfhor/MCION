function Imax= prestimDoseResponse(x,model)
    global prol3IVM J A IVMon IVMoff
%     experiment=prol3IVM;
    
   
    J0=3e-6;
    
  
    ATP=[0.1,0.3,1,3,10,100].'*1e-6;
    Imax=zeros(size(ATP));
    tprestim=10;
    twait=5;
    tatp=2;


    IVMon=0;
    IVMoff=tprestim+tatp;

    model.setParams(x);
    
    for i=1:length(ATP)
        A=ATP(i);
        

        J=J0;
        
        [T0,I0,Y0]=model.naivePerfusionResponse(tprestim,tprestim+tatp,tprestim);
        
        A=ATP(i);

%         J=0;

        [T1,I1]=model.perfusionResponse(Y0(end,:),0,tatp,tatp+twait);


        Imax(i)=abs(min(I1));

    end

end

