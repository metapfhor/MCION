function [T,I,Y]=naivePerfusionResponseIVP2X4StackDeMix7(ton,toff,Ttot)
	ode=modelODEP2X4StackDeMix7(ton,toff);
	naive=getNaiveP2X4StackDeMix7();
	setAuxiliaryP2X4StackDeMix7(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:33,'MaxStep',0.01));
	I=getTotalCurrentP2X4StackDeMix7(Y);
end