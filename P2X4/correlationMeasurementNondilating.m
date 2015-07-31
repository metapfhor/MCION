function [deltaEC,deltaErev,Imax,tauoff] = correlationMeasurement(model)
    global  pulse0IVM pulse3IVM E1 E2
   
    E1=0;
    E2=0;

    
    deltaEC=doseShift();
    
    E1=-33e-3;
    E2=-31e-3;
    
    deltaErev=IVShift(model);
    deltaErev=abs(deltaErev)/1e-3;
  

    
    E1=0;
    E2=0;

    Imaxatp=getLastPulseMetrics(pulse0IVM);
    [Imaxivm,tauoff]=getLastPulseMetrics(pulse3IVM);
    
    Imax=(Imaxivm-Imaxatp)/Imaxatp;
    
    function deltaEC=doseShift()
        EC1=doseEC(0,model);
        EC2=doseEC(30,model);
        deltaEC=(EC2-EC1)/EC2;
    end


    function [Imax,tauoff]=getLastPulseMetrics(exp)
        exp.globals.IVMoff=exp.conditions{3};
        setGlobals(exp.globals);
        toff=exp.conditions{2};
        ton=exp.conditions{1};
        ton(9)=ton(8)+100;
        toff(9)=ton(9)+2;
        exp.conditions{1}=ton;
        exp.conditions{2}=toff;
        [T,I,Imax]=lastIVMPulseIntegratorP2X4(exp.conditions{:},model);

        if nargout==2
            toff=exp.conditions{2};
            Ioff=I(T>toff(8));
            Toff=T(T>toff(8))-toff(8);
    %         f=fit(Toff,Ioff,'exp2');
    %         plot(f,Toff,Ioff);
    %         tauoff=coeffvalues(f);
    %         [v,i]=max(abs([tauoff(1),tauoff(3)]));
    %         if i==1
    %             tauoff=-1/tauoff(2);
    %         else
    %             tauoff=-1/tauoff(4);
    %         end
            f=fit(Toff,Ioff,'exp1');
    %         plot(f,Toff,Ioff);
            tauoff=coeffvalues(f);
            tauoff=-1/tauoff(2);
        end
%         title([num2str(exp.globals.J) 'uM IVM'])
%         drawnow;
    end
end

