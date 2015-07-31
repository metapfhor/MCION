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
        F=parPulseDoseResponseFuture3G45A(x,model);

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
            for i=1:6
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
            %deactivation time constants
            err1=err+sum((([tauoff(2,1) tauoff(2,2) tauoff(2,4) tauoff(2,6)]-[3 59 71 71])./(r2*([0.1 5 15 15]))).^2);

            %rising amplitude pulses
            err2=sum(((Imax(:,2)-[2.65e+03 3.72e+3].').^2)./(2*(100)^2));
            
            %baseline
            err2=err2+sum(((Imin(:,2)-[555 977].').^2)./(2*(50)^2));
            
            err3=0;
            if sum(Tmax(:)<3)~=0
                err3=Inf;
            end
            
            if sum(Tmax(:)>4)~=0
                err3=err3+sum((Tmax(Tmax(:)>4)-3).^2);
            end
            
        err=err1+err2+err3;
        end
    end

    f=struct('getFutures',@sseFutures,'evalFutures',@evalFutures);

end

