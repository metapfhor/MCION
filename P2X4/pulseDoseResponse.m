function [IVM,Imax,tauoff] = parPulseDoseResponse(x,model)
    global pulse0IVM pulse03IVM pulse1IVM pulse3IVM pulse6IVM pulse10IVM


    pulse03IVM=pulse1IVM;
    pulse03IVM.globals.J=3e-7;
    pulse6IVM=pulse1IVM;
    pulse6IVM.globals.J=6e-6;
            
    model.setParams(x);
   % IVM=[0,0.3,1,3,6,10]*1e-6;
    IVM=[0,0.3,1,3,6,10]*1e-6;
    Imax=zeros(size(IVM.'));
    tauoff=zeros(size(IVM.'));
  


    
    [Imax(1),tauoff(1)]=getLastPulseMetricsNN(x,pulse0IVM,model);
    [Imax(2),tauoff(2)]=getLastPulseMetricsNN(x,pulse03IVM,model);
    [Imax(3),tauoff(3)]=getLastPulseMetricsNN(x,pulse1IVM,model);
    [Imax(4),tauoff(4)]=getLastPulseMetricsNN(x,pulse3IVM,model);
    [Imax(5),tauoff(5)]=getLastPulseMetricsNN(x,pulse6IVM,model);
    [Imax(6),tauoff(6)]=getLastPulseMetricsNN(x,pulse10IVM,model);


    

end

