function [] = firstAndLastIVMPulseIntegratorP2X4G45A(ton,toff,Ttot,model)
global A J err IVMon IVMoff Acell A0 J0;
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 alpha
global Tfirst Ifirst Yfirst Tlast Ilast Ylast
    A0=A;
    J0=J;
    
    Imax=0;
    
	naive=model.naive();
% 	naive(1)=1;
    
    ode=model.pulseODE(ton(1),toff(1));
	[T1,Y1]=ode15s(ode,[0 toff(1)],naive,odeset('NonNegative',1:length(naive)));
    
    I1=model.getTotalCurrent(Y1);
    
    Imax=max(Imax,max(abs(I1)));
    
    ode=model.pulseODE(ton(2),toff(2));
	[T2,Y2]=ode15s(ode,[toff(1) toff(2)],Y1(end,:),odeset('NonNegative',1:length(naive)));
	
    I2=model.getTotalCurrent(Y2);
    Imax=max(Imax,max(abs(I2)));
        
    ode=model.pulseODE(ton(3),toff(3));
	[T3,Y3]=ode15s(ode,[toff(2) toff(3)],Y2(end,:),odeset('NonNegative',1:length(naive)));
    
    I3=model.getTotalCurrent(Y3);
    Imax=max(Imax,max(abs(I3)));
        
    ode=model.pulseODE(ton(4),toff(4));
	[T4,Y4]=ode15s(ode,[toff(3) toff(4)],Y3(end,:),odeset('NonNegative',1:length(naive)));
    
    I4=model.getTotalCurrent(Y4);
    Imax=max(Imax,max(abs(I4)));
    
    ode=model.pulseODE(ton(5),toff(5));
	[T5,Y5]=ode15s(ode,[toff(4) toff(5)],Y4(end,:),odeset('NonNegative',1:length(naive)));
       
    I5=model.getTotalCurrent(Y5);
    Imax=max(Imax,max(abs(I5)));
       
    
	[T6,Y6]=ode15s(ode,[toff(5) Ttot],Y5(end,:),odeset('NonNegative',1:length(naive)));
    
    I6=model.getTotalCurrent(Y6);
    Imax=max(Imax,max(abs(I6)));

    

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
    
   

    
    Tlast=vertcat(T5,T6);
    Ilast=vertcat(I5,I6);
    Ylast=vertcat(Y5,Y6);
%     
%     cf(768);plot(Tlast,Ilast);
%     drawnow;
    
end
