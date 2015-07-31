function f = parIVMDoseResponseErr(model)
global taucurve semtaucurve Icurve semIcurve
    IVM=[0,0.3,1,3,6,10];
    
%     taucurve=[0.9,0.9,2.8,11.9,16.1,16.6].';
%     semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115].';
    
%     taucurve=[0.19,0.19,1.8,12.1,16.7,16.9].';
%     semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115].';
%     
%     Icurve=[293,611,2619,2754,2357,2222].';
%     semIcurve=[56,87,793,587,643,730].';
    r2=sqrt(2);
    
    function F=sseFutures(x)
%         tic
        F=parPulseDoseResponseFuture(x,model);

%         toc
    end

    function err=evalFutures(F)
        Imax=zeros(6,1);
        tauoff=zeros(6,1);
        for i=1:6
            [j,I,t] = fetchNext(F);
            Imax(j)=I;
            tauoff(j)=t;
        end
        if sum(isnan([Imax; tauoff]))~=0
            err=Inf;
        else
           err=sum(((Imax-Icurve)./(r2*semIcurve)).^2)+sum(((tauoff-taucurve)./(r2*semtaucurve)).^2);
        end
    end

    f=struct('getFutures',@sseFutures,'evalFutures',@evalFutures);

end

