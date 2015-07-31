function [deltaEC,deltaErev,Imax,tauoff] = correlationMeasurement(model)
    global  pulse0IVM pulse3IVM E1 E2
    
    %this may need tweaking but should be kept constant
    %when modelling different mutants.

    E2=-15.5e-3;
    E1=-43e-3;
    
    deltaErev=IVShift(model);
    deltaErev=abs(deltaErev)/1e-3;
    
    E1=0;
    E2=0;

    
    [deltaEC,Imax]=doseShift();


  
    
   if deltaErev>95
    disp('excessive Erev shift!!!!!!!')
   end
    
    E1=0;
    E2=0;

    foo=getLastPulseMetrics(pulse0IVM);
    [foo,tauoff]=getLastPulseMetrics(pulse3IVM);
    
%     Imax=(Imaxivm-Imaxatp)/Imaxatp;
    
    function [deltaEC,Imax]=doseShift()
        [EC1,Imax1]=doseEC(0,model);
        [EC2,Imax2]=doseEC(30,model);
        deltaEC=-EC1/EC2;
        Imax=Imax2/Imax1;
    end


    function [Imax,tauoff]=getLastPulseMetrics(expmnt)
        expmnt.globals.IVMoff=expmnt.conditions{3};
        setGlobals(expmnt.globals);
        toff=expmnt.conditions{2};
        ton=expmnt.conditions{1};
        ton(9)=ton(8)+100;
        toff(9)=ton(9)+2;
        
        expmnt.conditions{1}=ton;
        expmnt.conditions{2}=toff;
        [T,I,Imax,Y]=lastIVMPulseIntegratorP2X4(expmnt.conditions{:},model);
    
%         figure
%         plot(T,I);
%         drawnow;
        
        if nargout==2
            toff=expmnt.conditions{2};
            Ioff=I(T>toff(8));
            Toff=T(T>toff(8))-toff(8);

%             f=fit(Toff,Ioff,'exp1');
%               tauoff=coeffvalues(f);
%               tauoff=-1/tauoff(2);
            
              decaybase = @(a,b,c,x) a*exp(-x/b)+c;
              f=fit(Toff,Ioff,decaybase,'StartPoint',[Ioff(1)/2,Toff(end)/2,0],'Upper',[Ioff(1),Inf,0],'Lower',[-Inf,0,Ioff(1)]);
%               tauoff=coeffvalues(f);
%               tauoff=tauoff(2);
              tauoff=f.b;
%             figure
%             subplot(2,1,1);
%             plot(f,Toff,Ioff);
%             title(['\tau_{off} = ' num2str(tauoff) ' s']);
%             subplot(2,1,2);
%             plotWatchedStates(T,Y,model);
%             axis tight;
%             drawnow;
%             
        end
%         title([num2str(exp.globals.J) 'uM IVM'])
%         drawnow;
    end
end

