function [T,I,Y]=naivePerfusionResponseIVP2X4Stack3sub(ton,toff,Ttot)
	ode=modelODEP2X4Stack3sub(ton,toff);
	naive=getNaiveP2X4Stack3sub();
	setAuxiliaryP2X4Stack3sub(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:9,'MaxStep',0.01));
	I=getTotalCurrentP2X4Stack3sub(Y);
end