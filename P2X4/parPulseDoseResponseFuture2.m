function F = parPulseDoseResponseFuture(x,model)
    global pulse0IVMs pulse03IVMs pulse1IVMs pulse3IVMs pulse6IVMs pulse10IVMs
    global globalStruct

  
    
    g=globalStruct;

    F(1)=parfeval(@globalSetFeval4,4,g,@getLastPulseMetricsNN2,x,pulse0IVMs,model);
    F(2)=parfeval(@globalSetFeval4,4,g,@getLastPulseMetricsNN2,x,pulse03IVMs,model);
    F(3)=parfeval(@globalSetFeval4,4,g,@getLastPulseMetricsNN2,x,pulse1IVMs,model);
    F(4)=parfeval(@globalSetFeval4,4,g,@getLastPulseMetricsNN2,x,pulse3IVMs,model);
    F(5)=parfeval(@globalSetFeval4,4,g,@getLastPulseMetricsNN2,x,pulse6IVMs,model);
    F(6)=parfeval(@globalSetFeval4,4,g,@getLastPulseMetricsNN2,x,pulse10IVMs,model);
    
    
    
   

end

