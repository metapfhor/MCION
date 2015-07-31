function [Imax,tauoff] = getLastPulseMetricsNN(x,expmnt,model)

        setGlobals(expmnt.globals);
        model.setParams(x);
        setGlobals(expmnt.globals);
        
        
        toff=expmnt.conditions{2};
        ton=expmnt.conditions{1};
        ton(9)=ton(8)+100;
        toff(9)=ton(9)+2;
        expmnt.conditions{1}=ton;
        expmnt.conditions{2}=toff;
        [T,I,Imax]=lastIVMPulseIntegratorP2X4(expmnt.conditions{:},model);

%         Imax=abs(min(I));
        
        toff=expmnt.conditions{2};
        Ioff=I(T>toff(7));
        [foo,maxind]=min(Ioff);
        Ioff=Ioff(maxind:end);
        Toff=T(T>toff(7))-toff(7);
        Toff=Toff(maxind:end)-Toff(maxind);

        if length(Toff)<3
            Imax=NaN;
            tauoff=NaN;
            return
        end

        decaybase = @(a,b,c,x) a*exp(-x/b)+c;
        [f1,gof1]=fit(Toff,Ioff,decaybase,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/2,Ioff(end)],'Upper',[Ioff(1),Inf,0],'Lower',[-Inf,0,min(Ioff(1),-6e-8)]);
       
        tauoff=f1.b;
        decaybase2 = @(a1,b1,a2,b2,c,x) a1*exp(-x/b1)+a2*exp(-x/b2)+c;
        [f2,gof2]=fit(Toff,Ioff,decaybase2,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/4,(Ioff(1)-Ioff(end))/2,Toff(end),Ioff(end)],'Upper',[0,Inf,0,Inf,0],'Lower',[-Inf,0.1,-Inf,0.1,min(Ioff(1),-6e-8)]);
% 

        
        if gof1.sse>gof2.sse
            %weighted time constant
            tauoff=(f2.a1*f2.b1+f2.a2*f2.b2)/(f2.a1+f2.a2);
%             tauoff=max(f2.b1,f2.b2);
        end
%         cf(2);
%         plot(Toff,f1(Toff),'-r',Toff,f2(Toff),'-g',Toff,Ioff,'ob');
%         title([num2str(expmnt.globals.J) 'uM IVM, \tau_{off} = ' num2str(tauoff)])
%         drawnow;


end

