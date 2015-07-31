function [T,I,Y]=naivePerfusionResponseP2X4StackDeMix5alt(ton,toff,Ttot)
	ode=modelODEP2X4StackDeMix5alt(ton,toff);
	naive=getNaiveP2X4StackDeMix5alt();
	setAuxiliaryP2X4StackDeMix5alt(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:33));
	I=getTotalCurrentP2X4StackDeMix5alt(Y);
end