function [T,I,Y] = Prol3FuncCallerP2X4(ton,toff,Ttot,model)
global A J err IVMon IVMoff Acell A0 J0 V;

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
    
    ode=model.pulseODE(ton(3),toff(3));
	[T4,Y4]=ode15s(ode,[toff(3) Ttot],Y3(end,:));
    
    I4=model.getTotalCurrent(Y4);
    
    Y=vertcat(Y1,Y2,Y3,Y4);
    I=vertcat(I1,I2,I3,I4);
    T=vertcat(T1,T2,T3,T4);
end
