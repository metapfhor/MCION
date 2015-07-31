function Imax= prestimDoseResponse(x,model)
    global prol3IVMs J A IVMon IVMoff
%     experiment=prol3IVM;
    
   
    J0=3e-6;
    
  
    ATP=[0.1,0.3,1,3,10,30,100].'*1e-6;
    Imax=zeros(size(ATP));
    tprestim=0;
    twait=5;
    tatp=2;


    IVMon=0;
    IVMoff=tprestim;
    J=0;
    model.setParams(x);
    
    for i=1:length(ATP)
        A=ATP(i);
        



        [T1,I1]=model.naivePerfusionResponse(0,tatp,tatp+twait);


        Imax(i)=abs(min(I1));

    end

end

