function F = parPulseDoseResponseFuture(x,model)
    global pulse0IVMs pulse03IVMs pulse1IVMs pulse3IVMs pulse6IVMs pulse10IVMs
    global globalStruct

  
    
    g=globalStruct;

    F(1)=parfeval(@globalSetFeval6,6,g,@getFirstAndLastPulseMetricsNN,x,pulse0IVMs,model);
    
    
    
   

end

