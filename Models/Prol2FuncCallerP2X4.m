function [T,I,Y] = ProlFuncCallerP2X4(ton,toff,Ttot,model)
global A J err IVMon IVMoff Acell A0 J0 V;
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 alpha

    A0=A;
    J0=J;
    
	naive=model.naive();
    
    ode=model.pulseODE(ton(1),toff(1));
	[T1,Y1]=ode15s(ode,[0 toff(1)],naive,odeset('MaxStep',1));
    
    I1=model.getTotalCurrent(Y1);
    
    ode=model.pulseODE(ton(2),toff(2));
	[T2,Y2]=ode15s(ode,[toff(1) toff(2)],Y1(end,:));
	
    I2=model.getTotalCurrent(Y2);
    
    Y=vertcat(Y1,Y2);
    I=vertcat(I1,I2);
    T=vertcat(T1,T2);
end
