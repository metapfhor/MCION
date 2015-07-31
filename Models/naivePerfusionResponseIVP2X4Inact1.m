function [T,I,Y]=naivePerfusionResponseIVP2X4Inact1(ton,toff,Ttot)
	ode=modelODEP2X4Inact1(ton,toff);
	naive=getNaiveP2X4Inact1();
	setAuxiliaryP2X4Inact1(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:22,'MaxStep',0.01));
	I=getTotalCurrentP2X4Inact1(Y);
end