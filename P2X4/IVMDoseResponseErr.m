function f = IVMDoseResponseErr(model)

    IVM=[0,0.3,1,3,6,10];
    
    taucurve=[0.9,0.9,2.8,11.9,16.1,16.6].';
    semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115].';
    
    Icurve=[293,611,2619,2754,2357,2222].';
    semIcurve=[56,87,793,587,643,730].';
    r2=sqrt(2);
    function err=sse(x)
        [foo,Imax,tauoff]=pulseDoseResponse(x,model);
        err=sum(((Imax-Icurve)./(r2*semIcurve)).^2)+sum(((tauoff-taucurve)./(r2*semtaucurve)).^2);
    end
  
  f=@sse;

end

