function [T,I,Y]=naivePerfusionResponseIVP2X4Inact2(ton,toff,Ttot)
	ode=modelODEP2X4Inact2(ton,toff);
	naive=getNaiveP2X4Inact2();
	setAuxiliaryP2X4Inact2(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:34,'MaxStep',0.01));
	I=getTotalCurrentP2X4Inact2(Y);
end