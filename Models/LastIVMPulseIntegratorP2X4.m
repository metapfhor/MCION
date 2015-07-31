function [T,I,Y] = LastIVMPulseIntegratorP2X4(ton,toff,Ttot)
global A J err IVMon IVMoff Acell A0 J0;
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 alpha

    A0=A;
    J0=J;
    
	naive=zeros(21,1);
	naive(1)=1;
    
    ode=PulseProtSSEP2X4(ton(1),toff(1));
	[T1,Y1]=ode15s(ode,[0 toff(1)],naive);
    
    I1=getTotalCurrentP2X4(Y1);
    
    ode=PulseProtSSEP2X4(ton(2),toff(2));
	[T2,Y2]=ode15s(ode,[toff(1) toff(2)],Y1(end,:));
	
    I2=getTotalCurrentP2X4(Y2);
    
    ode=PulseProtSSEP2X4(ton(3),toff(3));
	[T3,Y3]=ode15s(ode,[toff(2) toff(3)],Y2(end,:));
    
    I3=getTotalCurrentP2X4(Y3);
    
    ode=PulseProtSSEP2X4(ton(4),toff(4));
	[T4,Y4]=ode15s(ode,[toff(3) toff(4)],Y3(end,:));
    
    I4=getTotalCurrentP2X4(Y4);
    
    ode=PulseProtSSEP2X4(ton(5),toff(5));
	[T5,Y5]=ode15s(ode,[toff(4) toff(5)],Y4(end,:));
    
    I5=getTotalCurrentP2X4(Y5);
    
    ode=PulseProtSSEP2X4(ton(6),toff(6));
	[T6,Y6]=ode15s(ode,[toff(5) toff(6)],Y5(end,:));
    
    I6=getTotalCurrentP2X4(Y6);
    
    ode=PulseProtSSEP2X4(ton(7),toff(7));
	[T7,Y7]=ode15s(ode,[toff(6) toff(7)],Y6(end,:));
    
    I7=getTotalCurrentP2X4(Y7);
    
    ode=PulseProtSSEP2X4(ton(8),toff(8));
	[T8,Y8]=ode15s(ode,[toff(7) toff(8)],Y7(end,:));

      
    ode=PulseProtSSEP2X4(ton(9),toff(9));
	[T9,Y9]=ode15s(ode,[toff(8) toff(9)],Y8(end,:));
    
    Y8=Y8(T8>=ton(8),:)
    T8=T8(T8>=ton(8))
    I8=getTotalCurrentP2X4(Y8);

    Y9=Y9(T9<=ton(9),:)
    T9=T9(T9<=ton(0))
    I9=getTotalCurrentP2X4(Y9);
    
    T=vertcat(T8,T9);
    I=vertcat(I8,I9);
    Y=vertcat(Y8,Y9);
    
end
