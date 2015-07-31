function F = parPulseDoseResponseFuture(x,model)
    global pulse0IVMs pulse03IVMs pulse1IVMs pulse3IVMs pulse6IVMs pulse10IVMs
    global globalStruct


    model.setParams(x);
   % IVM=[0,0.3,1,3,6,10]*1e-6;
    IVM=[0,0.3,1,3,6,10]*1e-6;
    Imax=zeros(size(IVM.'));
    tauoff=zeros(size(IVM.'));
  
    
    g=globalStruct;

    F(1)=parfeval(@globalSetFeval2,2,g,@getLastPulseMetricsNN,x,pulse0IVMs,model);
    F(2)=parfeval(@globalSetFeval2,2,g,@getLastPulseMetricsNN,x,pulse03IVMs,model);
    F(3)=parfeval(@globalSetFeval2,2,g,@getLastPulseMetricsNN,x,pulse1IVMs,model);
    F(4)=parfeval(@globalSetFeval2,2,g,@getLastPulseMetricsNN,x,pulse3IVMs,model);
    F(5)=parfeval(@globalSetFeval2,2,g,@getLastPulseMetricsNN,x,pulse6IVMs,model);
    F(6)=parfeval(@globalSetFeval2,2,g,@getLastPulseMetricsNN,x,pulse10IVMs,model);
    
    
    
   

end

