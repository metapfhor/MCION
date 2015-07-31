function [T,I,Imax,Y] = LastIVMPulseIntegratorP2X4(ton,toff,Ttot,model)
global A J err IVMon IVMoff Acell A0 J0;
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 alpha

    A0=A;
    J0=J;
    
    Imax=0;
    
	naive=model.naive();
% 	naive(1)=1;
    
    ode=model.pulseODE(ton(1),toff(1));
	[T1,Y1]=ode15s(ode,[0 toff(1)],naive);
    
    I1=model.getTotalCurrent(Y1);
    
    Imax=max(Imax,max(abs(I1)));
    
    ode=model.pulseODE(ton(2),toff(2));
	[T2,Y2]=ode15s(ode,[toff(1) toff(2)],Y1(end,:));
	
    I2=model.getTotalCurrent(Y2);
    Imax=max(Imax,max(abs(I2)));
        
    ode=model.pulseODE(ton(3),toff(3));
	[T3,Y3]=ode15s(ode,[toff(2) toff(3)],Y2(end,:));
    
    I3=model.getTotalCurrent(Y3);
    Imax=max(Imax,max(abs(I3)));
        
    ode=model.pulseODE(ton(4),toff(4));
	[T4,Y4]=ode15s(ode,[toff(3) toff(4)],Y3(end,:));
    
    I4=model.getTotalCurrent(Y4);
    Imax=max(Imax,max(abs(I4)));
    
    ode=model.pulseODE(ton(5),toff(5));
	[T5,Y5]=ode15s(ode,[toff(4) toff(5)],Y4(end,:));
    
    I5=model.getTotalCurrent(Y5);
    Imax=max(Imax,max(abs(I5)));
    
    ode=model.pulseODE(ton(6),toff(6));
	[T6,Y6]=ode15s(ode,[toff(5) toff(6)],Y5(end,:));
    
    I6=model.getTotalCurrent(Y6);
    Imax=max(Imax,max(abs(I6)));
    
    ode=model.pulseODE(ton(7),toff(7));
	[T7,Y7]=ode15s(ode,[toff(6) toff(7)],Y6(end,:));
    
    I7=model.getTotalCurrent(Y7);
    Imax=max(Imax,max(abs(I7)));
    
    ode=model.pulseODE(ton(8),toff(8));
	[T8,Y8]=ode15s(ode,[toff(7) toff(8)],Y7(end,:));
% 
%       
%     ode=model.pulseODE(ton(9),toff(9));
% 	[T9,Y9]=ode15s(ode,[toff(8) toff(9)],Y8(end,:));
%     
%     Y8=Y8(T8>=ton(8),:);
%     T8=T8(T8>=ton(8));
%     I8=model.getTotalCurrent(Y8);
%     Imax=max(Imax,max(abs(I8)));
% 
%     Y9=Y9(T9<=ton(9),:);
%     T9=T9(T9<=ton(9));
%     I9=model.getTotalCurrent(Y9);
%     Imax=max(Imax,max(abs(I9)));
%     
%     T=vertcat(T8,T9);
%     I=vertcat(I8,I9);
%     Y=vertcat(Y8,Y9);
    


    
    Y7=Y7(T7>=ton(7),:);
    T7=T7(T7>=ton(7));
    I7=model.getTotalCurrent(Y7);
    Imax=max(Imax,max(abs(I7)));

    Y8=Y8(T8<=ton(8),:);
    T8=T8(T8<=ton(8));
    I8=model.getTotalCurrent(Y8);
    Imax=max(Imax,max(abs(I8)));
    
    T=vertcat(T7,T8);
    I=vertcat(I7,I8);
    Y=vertcat(Y7,Y8);
    
    
end
