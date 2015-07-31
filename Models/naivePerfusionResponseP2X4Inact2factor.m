function [T,I,Y]=naivePerfusionResponseP2X4Inact2factor(ton,toff,Ttot)
	ode=modelODEP2X4Inact2factor(ton,toff);
	naive=getNaiveP2X4Inact2factor();
	setAuxiliaryP2X4Inact2factor(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:34));
	I=getTotalCurrentP2X4Inact2factor(Y);
end