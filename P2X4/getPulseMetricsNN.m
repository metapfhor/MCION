function [Imax,Tmax,mdes,Imin,tauoff,Idot,Irem,mwash,rwash,tauwash] = getPulseMetricsNN(x,expmnt,model)
     global Tfirst Ifirst Yfirst Tlast Ilast Ylast Twash Iwash Ywash maxI
        setGlobals(expmnt.globals);
        model.setParams(x);
        setGlobals(expmnt.globals);
        
        

   
        ton=expmnt.conditions{1};
        toff=ton+2;
%         ton(9)=ton(8)+100;
%         toff(9)=ton(9)+2;
        expmnt.conditions{1}=ton;
        expmnt.conditions{2}=toff;
        Ttot=expmnt.conditions{3};
        
        IVMPulseIntegratorP2X4(expmnt.conditions{:},model);
        
        
        
        [Imax(1),indMax]=min(Ifirst);
        Imax(1)=abs(Imax(1));
        if sum(Tfirst>toff(3))~=0
            Imin(1)=-max(Ifirst(Tfirst>toff(3)));
        else
            Imin(1)=0;
        end
        Tmax(1)=Tfirst(indMax);
        if Tmax(1)==toff(3)
            expmnt.globals.IVMon=-1;
            setGlobals(expmnt.globals);
            [T,I]=model.perfusionResponse(Yfirst(find(Tfirst==toff(3), 1 ),:),-1,30,30);
            [Imax(1),indMax]=min(I);
%             cf(34);plot(Tfirst,Ifirst,T,I,'LineWidth',3);
%             drawnow();
            Imax(1)=abs(Imax(1));
            Tmax(1)=T(indMax)+2;
            mdes(1)=0;
        else
            indDes=Tfirst>Tmax(1)&Tfirst<toff(3);
            Ides=Ifirst(indDes)/Imax(1);
            Tdes=Tfirst(indDes);
%             cf(33);plot(Tfirst,Ifirst,Tdes,Ides*Imax(1),'LineWidth',3);
%             drawnow();
            if length(Ides)>=2
                f=fit(Tdes,Ides,'poly1');
                mdes(1)=f.p1;
            else
                mdes(1)=0;
            end
            Tmax(1)=Tmax(1)-ton(3);   
        end
        
       
        
        toff=expmnt.conditions{2};
        Ioff=Ifirst(Tfirst>toff(3));
        [foo,maxind]=min(Ioff);


        if  sum(Tfirst>toff(3))<3  || length(Ioff)-maxind<3
            tauoff(1)=NaN;
            
        else
            Ioff=Ioff(maxind:end);
            Toff=Tfirst(Tfirst>toff(3))-toff(3);
            Toff=Toff(maxind:end)-Toff(maxind);
            decaybase = @(a,b,c,x) a*exp(-x/b)+c;
            [f1,gof1]=fit(Toff,Ioff,decaybase,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/2,Ioff(end)],'Upper',[Ioff(1),Inf,0],'Lower',[-Inf,0,min(Ioff(1),-6e-8)]);

            tauoff(1)=f1.b;
            decaybase2 = @(a1,b1,a2,b2,c,x) a1*exp(-x/b1)+a2*exp(-x/b2)+c;
            [f2,gof2]=fit(Toff,Ioff,decaybase2,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/4,(Ioff(1)-Ioff(end))/2,Toff(end),Ioff(end)],'Upper',[0,Inf,0,Inf,0],'Lower',[-Inf,0.1,-Inf,0.1,min(Ioff(1),-6e-8)]);
            % 


            if gof1.sse>gof2.sse%not really the most informed descision
                %weighted time constant
                tauoff(1)=(f2.a1*f2.b1+f2.a2*f2.b2)/(f2.a1+f2.a2);
            end
            
        end

        
        
%         
        [Imax(2),indMax]=min(Ilast);
        Imax(2)=abs(Imax(2));
        Imax(3)=maxI;
        if sum(Tlast>toff(7))~=0
            Imin(2)=-max(Ilast(Tlast>toff(7)));
        else
            Imin(2)=0;
        end
        Tmax(2)=Tlast(indMax);
        if Tmax(2)>=toff(7)
            expmnt.globals.IVMon=-1;
            setGlobals(expmnt.globals);
            [T,I]=model.perfusionResponse(Ylast(find(Tlast==toff(7), 1 ),:),-1,30,30);
            [Imax(2),indMax]=min(I);
            Imax(2)=abs(Imax(2));
            Tmax(2)=T(indMax)+2;
            mdes(2)=0;
        else
            indDes=Tlast>Tmax(2)&Tlast<toff(7);
            Ides=Ilast(indDes)/Imax(2);
            Tdes=Tlast(indDes);
            if length(Ides)>=2
                f=fit(Tdes,Ides,'poly1');
                mdes(2)=f.p1;
            else
                mdes(2)=0;
            end
            Tmax(2)=Tmax(2)-ton(7);   
        end
        
        
        off1=find(Tlast==toff(7), 1 );
        off2=find(Tlast==toff(7), 1, 'last');
        off3=find((Tlast-toff(7))>=(Tlast(off1)-Tlast(off1-1)),1);
        Idot=zeros(2,1);
        
        if length(Tlast)==off2
            Idot(1:2)=(Ilast(off1)-Ilast(off1-1))/(Tlast(off1)-Tlast(off1-1));
        else
            Idot(1)=(Ilast(off1)-Ilast(off1-1))/(Tlast(off1)-Tlast(off1-1));
            Idot(2)=(Ilast(off3)-Ilast(off2))/(Tlast(off3)-Tlast(off2));
        end
       
        
        toff=expmnt.conditions{2};
        Ioff=Ilast(Tlast>toff(7));
        [foo,maxind]=min(Ioff);


        if sum(Tlast>toff(7))<3  || length(Ioff)-maxind<3
            tauoff(2)=NaN;
            
        else
            Ioff=Ioff(maxind:end);
            Toff=Tlast(Tlast>toff(7))-toff(7);
            Toff=Toff(maxind:end)-Toff(maxind);
            decaybase = @(a,b,c,x) a*exp(-x/b)+c;
            [f1,gof1]=fit(Toff,Ioff,decaybase,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/2,Ioff(end)],'Upper',[Ioff(1),Inf,0],'Lower',[-Inf,0,min(Ioff(1),-6e-8)]);

            tauoff(2)=f1.b;
            decaybase2 = @(a1,b1,a2,b2,c,x) a1*exp(-x/b1)+a2*exp(-x/b2)+c;
            [f2,gof2]=fit(Toff,Ioff,decaybase2,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/4,(Ioff(1)-Ioff(end))/2,Toff(end),Ioff(end)],'Upper',[0,Inf,0,Inf,0],'Lower',[-Inf,0.1,-Inf,0.1,min(Ioff(1),-6e-8)]);
            % 


            if gof1.sse>gof2.sse%not really the most informed descision
                %weighted time constant
                tauoff(2)=(f2.a1*f2.b1+f2.a2*f2.b2)/(f2.a1+f2.a2);
            end
            
        end


        Iw=zeros(5,1);
        Tw=zeros(5,1);
        
        [Iw(1),ind]=min(Iwash(Twash<=toff(9)));
        Tw(1)=Twash(ind)-Twash(1)+ton(9);

        
        [Iw(2),ind]=min(Iwash(Twash>=ton(10)&Twash<=toff(10)));
        Tw(2)=Twash(ind)-Twash(1)+ton(10);
        
        [Iw(3),ind]=min(Iwash(Twash>=ton(11)&Twash<=toff(11)));
        Tw(3)=Twash(ind)-Twash(1)+ton(11);

               
        Irem=abs(Iw(1));
                
        Iw=-Iw/Iw(1);
        
        fwash=fit(Tw,Iw,'poly1');
        
%         cf(888);plot(Tw,Iw);

        mwash=fwash.p1;
        rwash=Iw(3)/Iw(1);
        
        ind=Twash>Tw(1)&Twash<ton(10);
        I1=Iwash(ind);
        I1=I1-I1(end);
        T1=Twash(ind);
        T1=T1-T1(1);
        
        f1=fit(T1,I1,'exp1');
        
%         cf(897);plot(f1,T1,I1);
        
        
        ind=Twash>Tw(3)&Twash<Ttot;
        I3=Iwash(ind);
        I3=I3-I3(end);
        T3=Twash(ind);
        T3=T3-T3(1);
        
        
        f3=fit(T3,I3,'exp1');
        
%         cf(898);plot(f5,T5,I5);
        
        tauwash=zeros(2,1);
        tauwash(1)=-1/f1.b;
        tauwash(2)=-1/f3.b;

end

