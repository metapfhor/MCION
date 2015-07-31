function [T,I,Y]=naivePerfusionResponseP2X4Inact12(ton,toff,Ttot)
	ode=modelODEP2X4Inact12(ton,toff);
	naive=getNaiveP2X4Inact12();
	setAuxiliaryP2X4Inact12(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:22));
	I=getTotalCurrentP2X4Inact12(Y);
end