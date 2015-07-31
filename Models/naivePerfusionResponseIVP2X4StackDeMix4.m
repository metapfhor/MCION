function [T,I,Y]=naivePerfusionResponseIVP2X4StackDeMix4(ton,toff,Ttot)
	ode=modelODEP2X4StackDeMix4(ton,toff);
	naive=getNaiveP2X4StackDeMix4();
	setAuxiliaryP2X4StackDeMix4(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:25,'MaxStep',0.01));
	I=getTotalCurrentP2X4StackDeMix4(Y);
end