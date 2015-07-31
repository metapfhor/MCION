function [Imax,Tmax,mdes,Imin,tauoff,Idot] = getFirstAndLastPulseMetricsNNG45A(x,expmnt,model)
     global Tfirst Ifirst Yfirst Tlast Ilast Ylast
     
        expmnt.globals.IVMon=140;
        expmnt.globals.IVMoff=560;
     
        setGlobals(expmnt.globals);
        model.setParams(x);
        setGlobals(expmnt.globals);
        
        

   
        ton=expmnt.conditions{1};
        toff=ton+2;
        ton(9)=ton(8)+100;
        toff(9)=ton(9)+2;
        
        ton=[10,130,200,320,440];
        toff=ton+4;
        
        
        expmnt.conditions{1}=ton;
        expmnt.conditions{2}=toff;
        expmnt.conditions{3}=560;
        
        
        firstAndLastIVMPulseIntegratorP2X4G45A(expmnt.conditions{:},model);
        
        
        
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
            Tmax(1)=T(indMax)+4;
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
        if sum(Tlast>toff(5))~=0
            Imin(2)=-max(Ilast(Tlast>toff(5)));
        else
            Imin(2)=0;
        end
        Tmax(2)=Tlast(indMax);
        if Tmax(2)>=toff(5)
            expmnt.globals.IVMon=-1;
            setGlobals(expmnt.globals);
            [T,I]=model.perfusionResponse(Ylast(find(Tlast==toff(5), 1 ),:),-1,30,30);
            [Imax(2),indMax]=min(I);
            Imax(2)=abs(Imax(2));
            Tmax(2)=T(indMax)+4;
            mdes(2)=0;
        else
            indDes=Tlast>Tmax(2)&Tlast<toff(5);
            Ides=Ilast(indDes)/Imax(2);
            Tdes=Tlast(indDes);
            if length(Ides)>=2
                f=fit(Tdes,Ides,'poly1');
                mdes(2)=f.p1;
            else
                mdes(2)=0;
            end
            Tmax(2)=Tmax(2)-ton(5);   
        end
        
        
        off1=find(Tlast==toff(5), 1 );
        off2=find(Tlast==toff(5), 1, 'last');
        off3=find((Tlast-toff(5))>=(Tlast(off1)-Tlast(off1-1)),1);
        Idot=zeros(2,1);
        
        if length(Tlast)==off2
            Idot(1:2)=(Ilast(off1)-Ilast(off1-1))/(Tlast(off1)-Tlast(off1-1));
        else
            Idot(1)=(Ilast(off1)-Ilast(off1-1))/(Tlast(off1)-Tlast(off1-1));
            Idot(2)=(Ilast(off3)-Ilast(off2))/(Tlast(off3)-Tlast(off2));
        end
       
        
        toff=expmnt.conditions{2};
        Ioff=Ilast(Tlast>toff(5));
        [foo,maxind]=min(Ioff);


        if sum(Tlast>toff(5))<3  || length(Ioff)-maxind<3
            tauoff(2)=NaN;
            
        else
            Ioff=Ioff(maxind:end);
            Toff=Tlast(Tlast>toff(5))-toff(5);
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



end

