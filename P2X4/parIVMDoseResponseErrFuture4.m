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
        F=parPulseDoseResponseFuture3(x,model);

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
             %deactivation time constant (final)
             err1=err+sum(((tauoff(2,:).'-taucurve)./(r2*semtaucurve)).^2);
             if tauoff(2,3)>tauoff(2,4)/5
                err=Inf;
                return;
             end

            %maximal current amplitude (final)
            err2=sum(((Imax(2,:).'-Icurve)./(r2*semIcurve)).^2);
        

            if Imax(2,3)<2.2e+3 
                err=Inf;
                return;
            end

            %baseline current amplitude (first pulse);
            %this is in no way statistically validated for high IVM
            err2=err2+sum(([0 5 10]-[Imin(1,3) Imin(1,4) Imin(1,6)]).^2./(2*[5 10 20].^2));
            
            %baseline current amplitude (last pulse);
            err2=err2+sum(([0 190 220]-[Imin(2,3) Imin(2,4) Imin(2,6)]).^2./(2*[5 20 50].^2));
            
% %             activation time (control)
            err2=err2+sum(((Tmax(:,1)-1.15)./(r2*0.01)).^2);
%            activation time (1 um IVM) only the first point
            err2=err2+sum(((Tmax(1,3).'-[0.8352])./(r2*[0.01])).^2);
            
            %we dont want any activations to finish after 1.2 seconds
            if sum(Tmax(:)>1.2)~=0
                err2=err2+sum((Tmax(Tmax(:)>1.2)-1.2)./(r2*0.1).^2);
            end
%            %activation time (3 um IVM)
            err2=err2+sum(((Tmax(:,4).'-[0.8352 1.206])./(r2*[0.1 0.121])).^2);
            %activation time (10 um IVM)
            err2=err2+sum(((Tmax(:,6).'-[0.8352 1.206])./(r2*[0.1 0.121])).^2);
            
            %desensitization rates (control)
            err2=err2+sum(((Mdes(:,1)-0.0831)./(r2*0.0032)).^2);
            %desensitization rates (1 uM IVM)
            err2=err2+sum(((Mdes(:,3).'-[0.22 0.079])./(r2*[0.005 0.005])).^2);
            
            err2=err2+((Mdes(1,3)-Mdes(2,3)-0.1410)/(r2*0.005))^2;
            %desensitization rates (3 uM IVM)
            err2=err2+sum(((Mdes(:,4).'-[0.15 0.079])./(r2*[0.02 0.0147])).^2);
            %desensitization rates (10 uM IVM)
            err2=err2+sum(((Mdes(:,6).'-[0.12 0.079])./(r2*[0.02 0.0147])).^2);
            %sensitivity to ATP removal (10 uM IVM)
            err2=err2+(Idot(1,6)-Idot(2,6))^2/(200);
            
        err=err1+err2;
        end
    end

    f=struct('getFutures',@sseFutures,'evalFutures',@evalFutures);

end

