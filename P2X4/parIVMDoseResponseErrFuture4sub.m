function f = parIVMDoseResponseErr(model)
global taucurve semtaucurve Icurve semIcurve
    IVM=[0,0.3,1,3,6,10];
    
%     taucurve=[0.9,0.9,2.8,11.9,16.1,16.6].';
%     semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115].';
    
%     taucurve=[0.19,0.19,1.8,12.1,16.7,16.9].';
%     semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115].';
%     
%     Icurve=[293,611,2619,2754,2357,2222].';

    r2=sqrt(2);
    
    function F=sseFutures(x)
%         tic
        F=parPulseDoseResponseFuture3sub(x,model);

%         toc
    end

    function err=evalFutures(F)
        Imax=zeros(2,6);
        Tmax=zeros(2,6);
        Mdes=zeros(2,6);
        Imin=zeros(2,6);
        tauoff=zeros(2,6);
        Idot=zeros(2,6);
        Imin=zeros(2,6);
        try
            for i=1:1
                [j,Ipeak,Tpeak,Drate,Ibase,toff,Idotp] = fetchNext(F);
                Imax(:,j)=Ipeak;
                Tmax(:,j)=Tpeak;
                Mdes(:,j)=Drate;
                Imin(:,j)=Ibase;
                tauoff(:,j)=toff;
                Idot(:,j)=Idotp;
            end
        catch e
            err=Inf;
            return;
        end
        
        if sum(isnan([Imax; tauoff]))~=0
            err=Inf;
        else
            err=0;
             %deactivation time constant (final)
             err1=err+sum(((tauoff(2,1).'-taucurve(1))./(r2*semtaucurve(1))).^2);
             if tauoff(2,3)>tauoff(2,4)/5
                err=Inf;
                return;
             end

            %maximal current amplitude (final)
            err2=sum(((Imax(2,1).'-155)./(r2*semIcurve(1)/10)).^2);
        


% %             activation time (control)
            err2=err2+sum(((Tmax(:,1)-1.15)./(r2*0.01)).^2);

            %we dont want any activations to finish after 1.2 seconds
            if sum(Tmax(:)>1.2)~=0
                err2=err2+sum((Tmax(Tmax(:)>1.2)-1.2)./(r2*0.1).^2);
            end
            %desensitization rates (control)
            err2=err2+sum(((Mdes(:,1)-0.0831)./(r2*0.0032)).^2);
           
        err=err1+err2;
        end
    end

    f=struct('getFutures',@sseFutures,'evalFutures',@evalFutures);

end

