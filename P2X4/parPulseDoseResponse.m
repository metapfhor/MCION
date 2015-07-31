function [IVM,Imax,tauoff] = parPulseDoseResponse(x,model)
    global pulse0IVM pulse03IVM pulse1IVM pulse3IVM pulse6IVM pulse10IVM
    global globalStruct

    pulse03IVM=pulse1IVM;
    pulse03IVM.globals.J=3e-7;
    pulse6IVM=pulse1IVM;
    pulse6IVM.globals.J=6e-6;
            
    model.setParams(x);
   % IVM=[0,0.3,1,3,6,10]*1e-6;
    IVM=[0,0.3,1,3,6,10]*1e-6;
    Imax=zeros(size(IVM.'));
    tauoff=zeros(size(IVM.'));
  
    exps={ pulse0IVM, pulse03IVM, pulse1IVM, pulse3IVM, pulse6IVM, pulse10IVM};
    
    g=globalStruct;
    p=zeros(2,1);
    parfor i=1:6
       [Imax(i),tauoff(i)]=globalSetFeval2(g,@getLastPulseMetricsNN,x,exps{i},model);
    end
    

end

