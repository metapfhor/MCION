function [T,I,Y]=naivePerfusionResponseIVP2X4Inactsub(ton,toff,Ttot)
	ode=modelODEP2X4Inactsub(ton,toff);
	naive=getNaiveP2X4Inactsub();
	setAuxiliaryP2X4Inactsub(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:10,'MaxStep',0.01));
	I=getTotalCurrentP2X4Inactsub(Y);
end