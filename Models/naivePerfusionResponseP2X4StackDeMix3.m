function [T,I,Y]=naivePerfusionResponseP2X4StackDeMix3(ton,toff,Ttot)
	ode=modelODEP2X4StackDeMix3(ton,toff);
	naive=getNaiveP2X4StackDeMix3();
	setAuxiliaryP2X4StackDeMix3(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:33));
	I=getTotalCurrentP2X4StackDeMix3(Y);
end