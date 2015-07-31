function [T,I,Y] = PulseFuncCallerSSEP2X4(ton,toff,Ttot,model)
global A J err IVMon IVMoff Acell A0 J0 V;
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 alpha

    A0=A;
    J0=J;
    
	naive=model.naive();

    
    ode=model.pulseODE(ton(1),toff(1));
	[T1,Y1]=ode15s(ode,[0 toff(1)],naive);
    
    I1=model.getTotalCurrent(Y1);
    
    ode=model.pulseODE(ton(2),toff(2));
	[T2,Y2]=ode15s(ode,[toff(1) toff(2)],Y1(end,:));
	
    I2=model.getTotalCurrent(Y2);
    
    ode=model.pulseODE(ton(3),toff(3));
	[T3,Y3]=ode15s(ode,[toff(2) toff(3)],Y2(end,:));
    
    I3=model.getTotalCurrent(Y3);
    
    ode=model.pulseODE(ton(4),toff(4));
	[T4,Y4]=ode15s(ode,[toff(3) toff(4)],Y3(end,:));
    
    I4=model.getTotalCurrent(Y4);
    
    ode=model.pulseODE(ton(5),toff(5));
	[T5,Y5]=ode15s(ode,[toff(4) toff(5)],Y4(end,:));
    
    I5=model.getTotalCurrent(Y5);
    
    ode=model.pulseODE(ton(6),toff(6));
	[T6,Y6]=ode15s(ode,[toff(5) toff(6)],Y5(end,:));
    
    I6=model.getTotalCurrent(Y6);
    
    ode=model.pulseODE(ton(7),toff(7));
	[T7,Y7]=ode15s(ode,[toff(6) toff(7)],Y6(end,:));
    
    I7=model.getTotalCurrent(Y7);
    
    ode=model.pulseODE(ton(8),toff(8));
	[T8,Y8]=ode15s(ode,[toff(7) toff(8)],Y7(end,:));
    
    I8=model.getTotalCurrent(Y8);
    
    ode=model.pulseODE(ton(9),toff(9));
	[T9,Y9]=ode15s(ode,[toff(8) toff(9)],Y8(end,:));
    
    I9=model.getTotalCurrent(Y9);
    
    ode=model.pulseODE(ton(10),toff(10));
	[T10,Y10]=ode15s(ode,[toff(9) toff(10)],Y9(end,:));
    
    I10=model.getTotalCurrent(Y10);
    
    ode=model.pulseODE(ton(11),toff(11));
	[T11,Y11]=ode15s(ode,[toff(10) toff(11)],Y10(end,:));
    
    I11=model.getTotalCurrent(Y11);
    
    ode=model.pulseODE(ton(11),toff(11));
	[T12,Y12]=ode15s(ode,[toff(11) Ttot],Y11(end,:));
    
    I12=model.getTotalCurrent(Y12);
    
    Y=vertcat(Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12);
    I=vertcat(I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12);
    T=vertcat(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12);
end
