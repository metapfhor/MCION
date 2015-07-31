function [] = firstAndLastIVMPulseIntegratorP2X4G45A(ton,toff,Ttot,model)
global A J err IVMon IVMoff Acell A0 J0;
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 alpha
global Tfirst Ifirst Yfirst Tlast Ilast Ylast Twash Iwash Ywash
    A0=A;
    J0=J;
    
    Imax=0;
    
	naive=model.naive();
% 	naive(1)=1;
    
    ode=model.pulseODE(ton(1),toff(1));
	[~,Y1]=ode15s(ode,[0 toff(1)],naive,odeset('NonNegative',1:length(naive)));
    

    
 
    
    ode=model.pulseODE(ton(2),toff(2));
	[~,Y2]=ode15s(ode,[toff(1) toff(2)],Y1(end,:),odeset('NonNegative',1:length(naive)));
	

   
        
    ode=model.pulseODE(ton(3),toff(3));
	[T3,Y3]=ode15s(ode,[toff(2) toff(3)],Y2(end,:),odeset('NonNegative',1:length(naive)));
    

        
    ode=model.pulseODE(ton(4),toff(4));
	[T4,Y4]=ode15s(ode,[toff(3) toff(4)],Y3(end,:),odeset('NonNegative',1:length(naive)));
    
 
    
    ode=model.pulseODE(ton(5),toff(5));
	[T5,Y5]=ode15s(ode,[toff(4) toff(5)],Y4(end,:),odeset('NonNegative',1:length(naive)));
       


       
    ode=model.pulseODE(ton(6),toff(6));
	[T6,Y6]=ode15s(ode,[toff(5) toff(6)],Y5(end,:),odeset('NonNegative',1:length(naive)));
   
    
    ode=model.pulseODE(ton(7),toff(7));
	[T7,Y7]=ode15s(ode,[toff(6) toff(7)],Y6(end,:),odeset('NonNegative',1:length(naive)));
    I7=model.getTotalCurrent(Y7);
    
    ode=model.pulseODE(ton(8),toff(8));
	[T8,Y8]=ode15s(ode,[toff(7) toff(8)],Y7(end,:),odeset('NonNegative',1:length(naive)));
    I8=model.getTotalCurrent(Y8);

    ode=model.pulseODE(ton(9),toff(9));
	[T9,Y9]=ode15s(ode,[toff(8) toff(9)],Y8(end,:),odeset('NonNegative',1:length(naive)));
    I9=model.getTotalCurrent(Y9);

    ode=model.pulseODE(ton(10),toff(10));
	[T10,Y10]=ode15s(ode,[toff(9) toff(10)],Y9(end,:),odeset('NonNegative',1:length(naive)));
    I10=model.getTotalCurrent(Y10);
    
    ode=model.pulseODE(ton(10),toff(10));
	[T11,Y11]=ode15s(ode,[toff(10) Ttot],Y10(end,:),odeset('NonNegative',1:length(naive)));
    I11=model.getTotalCurrent(Y11);


    

    Y3=Y3(T3>=ton(3),:);
    T3=T3(T3>=ton(3));
    I3=model.getTotalCurrent(Y3);


    Y4off=Y4(T4<=ton(4),:);
    T4off=T4(T4<=ton(4));
    I4off=model.getTotalCurrent(Y4off);
    
    Tfirst=vertcat(T3,T4off);
    Ifirst=vertcat(I3,I4off);
    Yfirst=vertcat(Y3,Y4off);
    
    
    Y5=Y5(T5>=ton(5),:);
    T5=T5(T5>=ton(5));
    I5=model.getTotalCurrent(Y5);
    
   
    Y5p=Y6(T6<=ton(6),:);
    T5p=T6(T6<=ton(6));
    I5p=model.getTotalCurrent(Y5p);
    
    Tlast=vertcat(T5,T5p);
    Ilast=vertcat(I5,I5p);
    Ylast=vertcat(Y5,Y5p);
    
    
    Y6=Y6(T6>=ton(6),:);
    T6=T6(T6>=ton(6));
    I6=model.getTotalCurrent(Y6);
    
    Twash=vertcat(T6,T7,T8,T9,T10,T11);
    Iwash=vertcat(I6,I7,I8,I9,I10,I11);
    Ywash=vertcat(Y6,Y7,Y8,Y9,Y10,Y11);
    
    
    
%     cf(768);plot(Twash,Iwash);
%     drawnow;
    
end
